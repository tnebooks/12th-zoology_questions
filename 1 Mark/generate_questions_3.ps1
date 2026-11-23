# =========================================================
# Generate individual English and Tamil question files
# Year: 2023
#
# Input:
#   2023.md
#   2023_ta.md
#   2023_1.md
#   2023_1_ta.md
#
# Output:
#   2023\1.md ... 23.md
#   2023\1_ta.md ... 23_ta.md
# =========================================================

$Year = "2023"

$EnglishFiles = @(
    ".\2023.md",
    ".\2023_1.md"
)

$TamilFiles = @(
    ".\2023_ta.md",
    ".\2023_1_ta.md"
)

$Output = ".\$Year"

# Correct option number for each question.
# 1 = first option, 2 = second option, etc.
# Questions 1-15 are from the first pair (2023.md / 2023_ta.md).
# Questions 16-23 are from the second pair (2023_1.md / 2023_1_ta.md).

$AnswerKey = @(
    2,  # 1  Extinction
    1,  # 2  Statins
    1,  # 3  Formation of three germ layer embryo from single layer embryo.
    2,  # 4  AUG
    4,  # 5  All of the above
    2,  # 6  Mesozoic era
    3,  # 7  Hominids
    1,  # 8  Catadromous
    3,  # 9  Spermarche
    3,  # 10 Liver
    4,  # 11 Leydig cell
    2,  # 12 Over exploitation
    2,  # 13 IgE
    2,  # 14 Seagull (Fish eating birds)
    1,  # 15 Conjugation

    1,  # 16 13 - Trisomy
    4,  # 17 Exogenous budding
    4,  # 18 IgA
    4,  # 19 anti-viral substances
    2,  # 20 Progesterone and estrogen
    3,  # 21 Fungi
    1,  # 22 Amphibians
    4   # 23 Lipase
)

# ---------------------------------------------------------
# English explanations
# ---------------------------------------------------------

$EnglishExplanations = @(

    "According to Gause's competitive exclusion principle, intense competition between species for the same limited resources eliminates the weaker competitor, leading to extinction.",

    "Statins lower blood cholesterol levels by competitively inhibiting the enzyme HMG-CoA reductase, which is required for cholesterol synthesis.",

    "Gastrulation is the developmental process in which a single-layered blastula reorganizes into a three-layered gastrula containing ectoderm, mesoderm, and endoderm.",

    "AUG codes for the amino acid methionine and also serves as the universal start codon for protein synthesis.",

    "The ZW-ZZ system of sex determination, in which females are heterogametic (ZW) and males are homogametic (ZZ), occurs in birds, reptiles, and certain fishes.",

    "The Mesozoic era is known as the Golden Age of Reptiles because reptiles, especially dinosaurs, dominated terrestrial, aquatic, and aerial habitats during this era.",

    "Hominids (such as Homo habilis) were the first human-like beings, characterized by bipedal locomotion and a brain capacity of about 650-800 cc.",

    "Catadromous animals, such as freshwater eels, live primarily in freshwater and migrate to seawater for breeding.",

    "Spermarche refers to the first ejaculation of semen in males, marking the onset of puberty.",

    "In Plasmodium, exo-erythrocytic schizogony occurs within liver cells (hepatocytes) before the parasites enter red blood cells.",

    "Leydig (interstitial) cells located between the seminiferous tubules secrete the male sex hormone testosterone under the stimulation of LH.",

    "Excessive human hunting and harvesting (over-exploitation) drove species such as the Dodo, Passenger pigeon, and Steller's sea cow to extinction.",

    "IgE antibodies mediate allergic reactions by binding to mast cells and basophils, triggering the release of histamine and other inflammatory mediators.",

    "Due to biomagnification, non-biodegradable pollutants such as DDT become increasingly concentrated at higher trophic levels, reaching maximum levels in fish-eating birds like seagulls.",

    "Bacterial conjugation transfers genetic material between donor and recipient bacterial cells through a conjugation pilus.",

    "Patau's syndrome is a chromosomal disorder caused by the presence of an extra copy of chromosome 13 (trisomy 13).",

    "When buds develop externally on the outer surface of the parent body (as seen in Hydra), the asexual reproductive process is called exogenous budding.",

    "Colostrum, the yellowish milk secreted during the initial days of lactation, is rich in IgA antibodies that provide passive immunity to the newborn.",

    "Interferons are antiviral glycoproteins secreted by virus-infected cells to protect neighboring uninfected cells from viral replication.",

    "Oral contraceptive pills contain synthetic combinations of progesterone and estrogen (or progesterone alone) that inhibit FSH and LH secretion, preventing ovulation.",

    "Athlete's foot (tinea pedis) is a superficial fungal infection of the skin caused by dermatophytes such as Trichophyton and Epidermophyton.",

    "Amphibians face a disproportionately high risk of extinction from habitat destruction due to their permeable skin and dependence on both aquatic and terrestrial habitats.",

    "Lipase breaks down triglycerides (fats and oils) into glycerol and fatty acids, making it useful in laundry detergents for removing oily stains."
)

# ---------------------------------------------------------
# Tamil explanations
# ---------------------------------------------------------

$TamilExplanations = @(

    "காஸின் போட்டி விலக்கல் கோட்பாட்டின்படி, ஒரே வளத்திற்காக சிற்றினங்களுக்கிடையே ஏற்படும் போட்டி வலுவற்ற சிற்றினத்தின் உயிரின மறைவுக்கு வழிவகுக்கிறது.",

    "ஸ்டேட்டின்கள் கொலஸ்டிரால் உற்பத்திக்குத் தேவையான HMG-CoA ரிடக்டேஸ் நொதியின் செயல்பாட்டைத் தடுப்பதன் மூலம் இரத்தக் கொலஸ்டிரால் அளவைக் குறைக்கின்றன.",

    "ஓரடுக்கு கருக்கோளமான பிளாஸ்டுலா, புறப்படை, நடுப்படை மற்றும் அகப்படை ஆகிய மூன்று மூல இனச்செல் அடுக்குகளைக் கொண்ட மூவடுக்கு கருக்கோளமாக மாறும் நிகழ்ச்சியே கருக்கோளமாக்கம் ஆகும்.",

    "AUG என்ற மரபணு குறியீடு மெத்தியோனின் அமினோ அமிலத்தைக் குறியீடு செய்வதோடு, புரத உற்பத்தியைத் தொடங்கும் குறியீடாகவும் செயல்படுகிறது.",

    "பெண் உயிரிகள் வேறுபட்ட இனச்செல்களையும் (ZW) ஆண் உயிரிகள் ஒத்த இனச்செல்களையும் (ZZ) கொண்டிருக்கும் ZW-ZZ வகை பால் நிர்ணயம் ஊர்வன, பறவைகள் மற்றும் சில மீன்களில் காணப்படுகிறது.",

    "மீசோசோயிக் பெருங்காலத்தில் ஊர்வன உயிரினங்கள், குறிப்பாக டைனோசர்கள், பூமியில் ஆதிக்கம் செலுத்தியதால் இக்காலம் ஊர்வன இனத்தின் பொற்காலம் என அழைக்கப்படுகிறது.",

    "ஹோமினிட்கள் (ஹோமோ ஹாபிலிஸ்) முதன்முதலாக மனிதனைப் போலத் தோற்றமளித்த உயிரினங்களாகும்.",

    "நன்னீரிலிருந்து கடல்நீருக்கு இனப்பெருக்கத்திற்காக இடம்பெயரும் விலங்கினங்கள் கட்டாட்ராமஸ் என அழைக்கப்படுகின்றன. விலாங்கு மீன்கள் இதற்கு உதாரணமாகும்.",

    "பருவமடையும் காலத்தில் ஆண்களில் நடைபெறும் முதல் விந்து திரவ வெளியேற்றத்திற்கு ஸ்பெர்மார்க்கி என்று பெயர்.",

    "பிளாஸ்மோடியம் ஒட்டுண்ணியின் புறச்சிவப்பணு சைஷோகோனி (Exo-erythrocytic schizogony) கல்லீரல் செல்களில் நடைபெறுகிறது.",

    "விந்தக நுண்குழல்களுக்கு இடையே காணப்படும் லீடிக் செல்கள் (இடையீட்டு செல்கள்) LH ஹார்மோனால் தூண்டப்பட்டு டெஸ்டோஸ்டீரோனைச் சுரக்கின்றன.",

    "மனிதர்களின் மிகை பயன்பாடு காரணமாக டோடோ, பயணிகள் புறா மற்றும் ஸ்டெல்லரின் கடல் பசு ஆகிய உயிரினங்கள் அழிந்துவிட்டன.",

    "IgE எதிர்ப்பொருட்கள் மாஸ்ட் செல்கள் மற்றும் பேசோஃபில்களுடன் இணைந்து ஹிஸ்டமைனை வெளியேற்றுவதன் மூலம் ஒவ்வாமை வினைகளில் முக்கிய பங்கு வகிக்கின்றன.",

    "உயிரி உருப்பெருக்கம் காரணமாக நீர் உணவுச் சங்கிலியின் உயர்மட்ட உணவூட்ட நிலையில் உள்ள கடற்பறவைகளில் (மீன்களை உண்ணும் பறவைகள்) அதிகபட்ச DDT செறிவு காணப்படுகிறது.",

    "பாக்டீரியாக்களில் இணைதல் (Conjugation) முறையில் ஒரு பாக்டீரியாவிலிருந்து மற்றொரு பாக்டீரியாவிற்கு மரபணுப் பொருள் மாற்றப்படுகிறது.",

    "பட்டாவ் சிண்ட்ரோம் என்பது 13-வது குரோமோசோமில் ஒரு கூடுதல் நகல் காணப்படுவதால் (13 - டிரைசோமி) ஏற்படும் மரபியல் குறைபாடாகும்.",

    "பெற்றோர் உடலின் வெளிப்பகுதியில் மொட்டுகள் உருவாகி புதிய உயிரினமாக வளரும் பாலிலி இனப்பெருக்க முறை புற முகிழ்தல் எனப்படும்.",

    "குழந்தை பிறந்த முதல் சில நாட்களில் சுரக்கும் சீம்பாலில் IgA எதிர்ப்பொருட்கள் அதிகம் காணப்படுகின்றன; இவை குழந்தைக்கு நோய் எதிர்ப்பு சக்தியை அளிக்கின்றன.",

    "வைரஸால் பாதிக்கப்பட்ட செல்கள் சுரக்கும் இன்டர்ஃபெரான்கள், அருகிலுள்ள பாதிக்கப்படாத செல்களை வைரஸ் தொற்றிலிருந்து பாதுகாக்கும் வைரஸ் எதிர்ப்புப் பொருட்களாகும்.",

    "கருத்தடை மாத்திரைகளில் புரோஜெஸ்டிரோன் மற்றும் ஈஸ்ட்ரோஜன் ஹார்மோன்கள் உள்ளன; இவை FSH மற்றும் LH சுரத்தலைத் தடுத்து அண்டம் விடுபடுதலைத் தடுக்கின்றன.",

    "மனிதனில் சேற்றுப்புண் (Athlete's foot) என்பது பூஞ்சைகளால் ஏற்படும் தோல் நோயாகும்.",

    "ஈரப்பதமான தோல் மற்றும் நீர், நிலம் ஆகிய இரு வாழிடங்களையும் சார்ந்திருப்பதால், வாழிட சீரழிவினால் மிகக் கடுமையான பாதிப்புகளுக்கு உள்ளாகி அழியும் நிலையில் இருவாழ்விகள் உள்ளன.",

    "லிப்பேஸ் நொதி கொழுப்பு மற்றும் எண்ணெய் மூலக்கூறுகளைச் சிதைப்பதால், சலவைத் தூள்களில் சேர்க்கப்பட்டு துணிகளில் படிந்த எண்ணெய் கறைகளை நீக்கப் பயன்படுகிறது."
)

# ---------------------------------------------------------
# Convert text to YAML-safe quoted string
# ---------------------------------------------------------

function ConvertTo-YamlString {
    param([string]$Text)

    $Text = $Text.Replace('\', '\\')
    $Text = $Text.Replace('"', '\"')

    return '"' + $Text + '"'
}

# ---------------------------------------------------------
# Read questions from a Markdown file
# ---------------------------------------------------------

function Read-Questions {
    param([string]$FilePath)

    if (!(Test-Path -LiteralPath $FilePath)) {
        throw "Source file not found: $FilePath"
    }

    $content = Get-Content -LiteralPath $FilePath -Raw -Encoding UTF8

    $blocks = $content -split '(?:\r?\n\s*){2,}'

    $questions = @()

    foreach ($block in $blocks) {

        $lines = @(
            $block -split '\r?\n' |
            ForEach-Object { $_.Trim() } |
            Where-Object { $_ -ne "" }
        )

        if ($lines.Count -lt 2) {
            continue
        }

        $questionText = $lines[0]

        $options = @(
            $lines | Select-Object -Skip 1 |
            ForEach-Object {
                $_ -replace '^\s*[-*]\s+', ''
            }
        )

        if ($options.Count -eq 4) {

            $questions += [PSCustomObject]@{
                Question = $questionText
                Options  = $options
            }
        }
        else {
            Write-Warning "Skipped block in $FilePath : $questionText"
        }
    }

    return $questions
}

# ---------------------------------------------------------
# Read and combine multiple source files
# ---------------------------------------------------------

function Read-AllQuestions {
    param([array]$Files)

    $allQuestions = @()

    foreach ($file in $Files) {

        Write-Host "Reading $file"

        $questions = @(Read-Questions -FilePath $file)

        $allQuestions += $questions
    }

    return $allQuestions
}

# ---------------------------------------------------------
# Generate individual question files
# ---------------------------------------------------------

function New-QuestionFiles {
    param(
        [array]$Questions,
        [string]$OutputFolder,
        [string]$Suffix,
        [array]$Explanations
    )

    New-Item -ItemType Directory -Path $OutputFolder -Force |
        Out-Null

    for ($i = 0; $i -lt $Questions.Count; $i++) {

        $number = $i + 1
        $question = $Questions[$i]

        $correctIndex = $AnswerKey[$i]

        if ($correctIndex -lt 1 -or $correctIndex -gt 4) {
            throw "Invalid answer key for question $number"
        }

        $correctAnswer = $question.Options[$correctIndex - 1]

        $wrongAnswers = @(
            for ($j = 0; $j -lt 4; $j++) {
                if ($j -ne ($correctIndex - 1)) {
                    $question.Options[$j]
                }
            }
        )

        $choicesYaml = (
            $wrongAnswers | ForEach-Object {
                "  - $(ConvertTo-YamlString $_)"
            }
        ) -join "`r`n"

        $answerYaml = "  - $(ConvertTo-YamlString $correctAnswer)"

        $explanation = $Explanations[$i]

        $markdown = @"
---
choices:
$choicesYaml
answers:
$answerYaml
---
$($question.Question)

---
$explanation
"@

        $fileName = "$number$Suffix.md"
        $filePath = Join-Path $OutputFolder $fileName

        Set-Content -LiteralPath $filePath `
            -Value $markdown `
            -Encoding UTF8

        Write-Host "Created: $filePath"
    }
}

# =========================================================
# MAIN PROGRAM
# =========================================================

Write-Host "`nReading English question files..."
$englishQuestions = @(Read-AllQuestions -Files$EnglishFiles)

Write-Host "`nReading Tamil question files..."
$tamilQuestions = @(Read-AllQuestions -Files $TamilFiles)

# Validate question counts
if ($englishQuestions.Count -ne $tamilQuestions.Count) {
    throw "English and Tamil question counts do not match."
}

if ($englishQuestions.Count -ne $AnswerKey.Count) {
    throw "Answer key count does not match the number of questions."
}

if ($englishQuestions.Count -ne $EnglishExplanations.Count) {
    throw "English explanation count does not match the number of questions."
}

if ($tamilQuestions.Count -ne $TamilExplanations.Count) {
    throw "Tamil explanation count does not match the number of questions."
}

Write-Host "`nTotal English questions: $($englishQuestions.Count)"
Write-Host "Total Tamil questions: $($tamilQuestions.Count)"

# Generate English files
New-QuestionFiles `
    -Questions $englishQuestions `
    -OutputFolder