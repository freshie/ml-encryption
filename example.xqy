import module namespace tf = "https://github.com/freshie/ml-encryption/twofish" at "twofish.xqy";

let $plainText := "Lorem ipsum dolor sit amet"
let $seed := "p@$$w0rd2013"

let $encrypt := tf:twoFishEncryptString($plainText, $seed)
let $encryptTime := xdmp:elapsed-time()
let $decrypt := tf:twoFishDecryptString($encrypt, $seed)
let $decryptTime := xdmp:elapsed-time()

return (
  $plainText,
  "************************************************",
  $encrypt,
  "************************************************",
  $encryptTime,
  "************************************************",
  $decrypt,
  "************************************************",
  $decryptTime
) 