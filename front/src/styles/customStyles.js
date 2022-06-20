import styled from 'styled-components'

export const SealImage = styled.img`
  border: 7px solid #fae212;
  box-shadow: 8px 12px 20px rgba(255, 255, 255, 0.25);
  border-radius: 8px;
  height: ${(props) => props.size};
  width: ${(props) => props.size};
  transition: transform 0.2s;
  margin: auto;
  ${(props) =>
    props.shouldHover
      ? '&:hover { transform: scale(1.1); border: 7px solid #fc4f4f; }'
      : ''}
`

export const BattleFontSpan = styled.span`
  font-family: 'Battle Bots';
`

export const HomeLayout = styled.div`
  background-color: #1a003c;
  height: 100%;
  min-height: 100vh;
  padding-bottom: 100px;
`

export const SealImageContainer = styled.div`
  text-align: center;
  margin: auto;
  cursor: pointer;
  opacity: ${(props) => (props.disabled ? '0.5' : '1')};
  pointer-events: ${(props) => (props.disabled ? 'none' : 'auto')};
`

export const Button = styled.button`
  padding: 24px;
  gap: 8px;
  width: 291px;
  height: 76px;
  background: linear-gradient(245.07deg, #fbb744 35.63%, #f8260d 97.13%),
    #ffffff;
  border-radius: 8px;
  opacity: ${(props) => (props.disabled ? '0.5' : '1')};
`

export const BackButtonDiv = styled.div`
  position: absolute;
  display: flex;
  align-item: center;
  left: 12.5%;
  right: 12.5%;
  top: 16.67%;
  bottom: 16.72%;
  width: 110px;
  height: 52px;
  cursor: pointer;
`
