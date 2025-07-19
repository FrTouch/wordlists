# Path to the source file for transformation
$sourceFile = "C:\path\to\file.txt"

# Path to result file after transformation
$resultFile = "C:\path\to\file.txt"

# Read source file content as raw
$text = Get-Content -Path $sourceFile -Raw

# Replace special characters with "normal" letters
$text = $text -replace '[áàâäãå]', 'a'
$text = $text -replace '[éèêë]', 'e'
$text = $text -replace '[íìîï]', 'i'
$text = $text -replace '[óòôöõ]', 'o'
$text = $text -replace '[úùûü]', 'u'
$text = $text -replace '[ýÿ]', 'y'
$text = $text -replace '[ç]', 'c'
$text = $text -replace '[ñ]', 'n'
$text = $text -replace '[ÁÀÂÄÃÅ]', 'A'
$text = $text -replace '[ÉÈÊË]', 'E'
$text = $text -replace '[ÍÌÎÏ]', 'I'
$text = $text -replace '[ÓÒÔÖÕ]', 'O'
$text = $text -replace '[ÚÙÛÜ]', 'U'
$text = $text -replace '[ÝŸ]', 'Y'
$text = $text -replace '[Ç]', 'C'
$text = $text -replace '[Ñ]', 'N'

# Transform result into uppercase
$text = $text.ToUpper()

# Save result to new file
Set-Content -Path $resultFile -Value $text
