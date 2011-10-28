{affine} = require './transforms'

module.exports =
  hipster: affine (face) -> [
    [36, 32, face.eye_left.x, face.eye_left.y]
    [96, 32, face.eye_right.x, face.eye_right.y]
  ]

  mustache: affine (face) -> [
    [249, 26, face.nose.x, face.nose.y]
    [249, 80, face.mouth_center.x, face.mouth_center.y]
  ]

  clown: affine (face) -> [
    [108, 111, face.nose.x, face.nose.y]
    [108, 202, face.mouth_center.x, face.mouth_center.y]
  ]