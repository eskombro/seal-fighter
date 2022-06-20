import React from 'react'
import { useQuery } from 'react-query'
import Logo from '../assets/logo.png'
import { getSeals } from '../queries/sealQueries'
import {
  BattleFontSpan,
  Button,
  HomeLayout,
  SealImage,
  SealImageContainer,
} from '../styles/customStyles'
import SealDetail from './SealDetail'

const INITIAL_STATE = {
  showSealDetail: null,
  activePlayer: '',
  playerOneSelection: null,
  playerTwoSelection: null,
}

const Home = () => {
  const [state, setState] = React.useState(INITIAL_STATE)
  const { data: seals, isLoading, isError } = useQuery(['seals'], getSeals)

  const handlePlayerChoice = (sealName, player) => {
    if (!player) return

    const playerSelection = `player${player}Selection`
    setState({ ...state, [playerSelection]: sealName, showSealDetail: null })
  }

  const handleActivePlayerSelect = (sealName, player) => {
    setState({
      ...state,
      activePlayer: player,
      showSealDetail: sealName,
    })
  }

  const handleClearSelection = (player) => {
    const playerSelection = `player${player}Selection`
    setState({ ...state, [playerSelection]: null })
  }

  const disableSealSelection = (sealName, player) => {
    const playerSelection = `player${player}Selection`
    if (state[playerSelection]) return sealName !== state[playerSelection]

    const otherPlayer = player === 'One' ? 'Two' : 'One'
    const otherPlayerSelection = `player${otherPlayer}Selection`

    if (state[otherPlayerSelection])
      return sealName === state[otherPlayerSelection]

    return false
  }

  const renderSeals = (player) => {
    if (isLoading) return <p>Loading...</p>
    if (isError) return <p>No seals</p>

    return seals.map((seal) => {
      const ImageUrl = require(`../assets/${seal.img_url}`)
      const sealName = seal.name.split('_').join(' ').toUpperCase()

      return (
        <SealImageContainer
          key={seal.id}
          className="text-center"
          onClick={() => handleActivePlayerSelect(seal.name, player)}
          disabled={disableSealSelection(seal.name, player)}
        >
          <SealImage
            src={ImageUrl}
            alt={seal.name}
            shouldHover="true"
            size="97.65px"
          />
          <BattleFontSpan className="italic text-base font-extrabold text-white">
            {sealName}
          </BattleFontSpan>
        </SealImageContainer>
      )
    })
  }

  const renderPlayerChoices = (player) => {
    return (
      <div className="w-96">
        <div className="flex flex-col text-center">
          <BattleFontSpan className="w-28 italic text-4xl font-extrabold text-white w-full">
            PLAYER {player.toUpperCase()}
          </BattleFontSpan>
          <BattleFontSpan className="w-28 italic text-lg font-extrabold text-white text-opacity-70 w-full">
            CHOOSE A SEAL
          </BattleFontSpan>
        </div>
        <div className="grid grid-cols-3 gap-4 pt-16">
          {renderSeals(player)}
        </div>
        <div className="pt-20 flex justify-center">
          <Button
            type="button"
            className="flex items-center"
            style={{ height: '40px', width: '110px' }}
            onClick={() => handleClearSelection(player)}
            disabled={!state[`player${player}Selection`]}
          >
            <BattleFontSpan className="text-white italic font-extrabold text-xl leading-9">
              Clear
            </BattleFontSpan>
          </Button>
        </div>
      </div>
    )
  }

  const renderHomePage = () => {
    return (
      <>
        <div className="flex justify-center pt-20">
          <img className="h-96" alt="logo" src={Logo} />
        </div>
        <div className="flex justify-evenly pt-5 items-center">
          {renderPlayerChoices('One')}
          <div className="w-28 italic text-7xl font-extrabold text-white">
            <BattleFontSpan>VS</BattleFontSpan>
          </div>
          {renderPlayerChoices('Two')}
        </div>
      </>
    )
  }

  return (
    <HomeLayout>
      {state.showSealDetail ? (
        <SealDetail
          sealName={state.showSealDetail}
          activePlayer={state.activePlayer}
          handleBack={() => setState({ ...state, showSealDetail: null })}
          handlePlayerChoice={handlePlayerChoice}
        />
      ) : (
        renderHomePage()
      )}
    </HomeLayout>
  )
}

export default Home
