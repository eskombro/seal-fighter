import React from 'react'
import PropTypes from 'prop-types'
import { useQuery } from 'react-query'
import { ReactComponent as LeftArrow } from '../assets/svg/leftArrow.svg'
import { getSealDetail } from '../queries/sealQueries'
import {
  BackButtonDiv,
  BattleFontSpan,
  Button,
  SealImage,
} from '../styles/customStyles'

const SealDetail = ({
  sealName,
  activePlayer,
  handleBack,
  handlePlayerChoice,
}) => {
  const {
    data: sealData,
    isLoading,
    isError,
  } = useQuery(['sealDetail', sealName], () => getSealDetail(sealName))

  if (isLoading) return <p>Loading...</p>
  if (isError) return <p>No seal</p>

  const renderBackBtn = () => {
    return (
      <BackButtonDiv onClick={handleBack}>
        <LeftArrow className="w-6 h-6" />
        <BattleFontSpan className="italic text-base font-extrabold text-white pl-4 text-2xl">
          BACK
        </BattleFontSpan>
      </BackButtonDiv>
    )
  }

  return (
    <div>
      {renderBackBtn()}
      <div className="flex justify-center flex-col items-center min-h-screen">
        <div className="2xl:w-[44rem]">
          <div className="flex items-center">
            <SealImage
              src={require(`../assets/${sealData.img_url}`)}
              alt={sealData.name}
              size="169.4px"
              style={{ margin: 30 }}
            />
            <BattleFontSpan className="italic text-4xl font-extrabold text-white">
              {sealData.name.split('_').join(' ').toUpperCase()}
            </BattleFontSpan>
          </div>
          <div className="flex items-center">
            <BattleFontSpan className="w-28 italic text-3xl leading-9 font-extrabold text-white text-opacity-70 w-full">
              HP: {sealData.hp}
            </BattleFontSpan>
            <BattleFontSpan className="w-28 italic text-3xl leading-9 font-extrabold text-white text-opacity-70 w-full">
              ATTACK: {sealData.attack}
            </BattleFontSpan>
            <BattleFontSpan className="w-28 italic text-3xl leading-9 font-extrabold text-white text-opacity-70 w-full">
              DEFENSE: {sealData.defense}
            </BattleFontSpan>
          </div>
          <div className="pt-9">
            <span className="text-white font-normal leading-6 font-sans text-opacity-70 text-justify">
              {sealData.description}
            </span>
          </div>
          <div className="pt-9 text-center">
            <Button
              type="button"
              onClick={() => handlePlayerChoice(sealName, activePlayer)}
            >
              <BattleFontSpan className="text-white italic font-extrabold text-xl leading-9">
                CHOOSE THIS FIGHTER
              </BattleFontSpan>
            </Button>
          </div>
        </div>
      </div>
    </div>
  )
}

SealDetail.propTypes = {
  sealName: PropTypes.number.isRequired,
  activePlayer: PropTypes.string.isRequired,
  handleBack: PropTypes.func.isRequired,
  handlePlayerChoice: PropTypes.func.isRequired,
}

export default SealDetail
