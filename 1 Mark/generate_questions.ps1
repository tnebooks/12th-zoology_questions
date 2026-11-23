# =========================================================
# Generate individual English and Tamil question files
# Year: 2021
#
# Input:
#   2021.md
#   2021_ta.md
#   2021_1.md
#   2021_1_ta.md
#
# Output:
#   2021\1.md ... 23.md
#   2021\1_ta.md ... 23_ta.md
# =========================================================

$Year = "2021"

$EnglishFiles = @(
    ".\2021.md",
    ".\2021_1.md"
)

$TamilFiles = @(
    ".\2021_ta.md",
    ".\2021_1_ta.md"
)

$Output = ".\$Year"

# Correct option number for each question.
# 1 = first option, 2 = second option, etc.
# Questions 1-15 are from the first pair (2021.md / 2021_ta.md).
# Questions 16-23 are from the second pair (2021_1.md / 2021_1_ta.md).

$AnswerKey = @(
    2,  # 1  Mesozoic era
    2,  # 2  more than 8
    3,  # 3  Replication, Transcription, Translation
    3,  # 4  Capacitation
    3,  # 5  Slope of the line
    1,  # 6  Catadromous
    2,  # 7  IgE
    1,  # 8  Conjugation
    1,  # 9  Male heterogamety
    4,  # 10 August Weismann
    3,  # 11 Statins
    4,  # 12 Recycle and reuse
    2,  # 13 Subunit recombinant vaccines
    1,  # 14 Oocysts
    2,  # 15 Diploid female

    4,  # 16 Detection of pathogens
    4,  # 17 Transcription
    2,  # 18 Theory of mutation
    4,  # 19 Eurytherms
    2,  # 20 Physical removal of solid particles
    4,  # 21 Oligotrophic
    1,  # 22 epididymis
    2   # 23 Vasectomy
)

# ---------------------------------------------------------
# English explanations
# ---------------------------------------------------------

$EnglishExplanations = @(

    "The Mesozoic era is known as the Golden Age of Reptiles because reptiles, especially dinosaurs, dominated the Earth during this period.",

    "In embryo transfer techniques, embryos with more than 8 blastomeres are transferred into the uterus through intrauterine transfer (IUT), whereas embryos with up to 8 blastomeres are transferred into the fallopian tube.",

    "According to the central dogma of molecular biology, the correct sequence of genetic information flow is Replication (DNA to DNA), Transcription (DNA to RNA), and Translation (RNA to protein).",

    "Capacitation is the physiological maturation process that sperm undergoes within the female reproductive tract before it acquires the ability to penetrate and fertilize the ovum.",

    "In Alexander von Humboldt's species-area relationship equation log S = log C + Z log A, Z represents the slope of the line (regression coefficient).",

    "Catadromous animals live primarily in freshwater and migrate to seawater for breeding; freshwater eels are a classic example.",

    "IgE antibodies mediate allergic reactions by binding to mast cells and basophils, triggering the release of histamine and other inflammatory mediators.",

    "Bacterial conjugation is a mode of sexual reproduction (genetic recombination) in which genetic material is transferred from a donor bacterium to a recipient bacterium via a conjugation pilus.",

    "In both XO and XY sex determination systems, males produce two different types of gametes (with or without an X chromosome, or X and Y), making both examples of male heterogamety.",

    "August Weismann proposed the Germplasm Theory, which states that heritable information is transmitted exclusively through germ cells rather than somatic cells.",

    "Statins lower blood cholesterol levels by competitively inhibiting the enzyme HMG-CoA reductase, which is required for cholesterol synthesis.",

    "Biomedical waste poses serious infection and contamination hazards, so 'recycle and reuse' is not used for its disposal; instead, methods like autoclaving, incineration, and encapsulation are employed.",

    "Subunit recombinant vaccines contain specific purified antigenic components of a pathogen produced via recombinant DNA technology rather than the whole organism.",

    "In the mosquito's stomach wall, Plasmodium vivax develops into oocysts, which undergo sporogony to produce thousands of infective sporozoites.",

    "In Drosophila, sex is determined by the ratio of X chromosomes to sets of autosomes (X:A). For 2A + XXY, the ratio is 2:2 (1.0), resulting in a diploid female.",

    "ELISA (Enzyme-Linked Immunosorbent Assay) is a diagnostic immunological test widely used for the detection of pathogens by identifying specific antigens or antibodies.",

    "mRNA is synthesized from a DNA template strand through the process of transcription catalyzed by RNA polymerase.",

    "Hugo de Vries proposed the Mutation Theory, explaining that evolution occurs through sudden, large, heritable variations called mutations.",

    "Organisms that can tolerate and survive across a wide range of temperatures are called eurytherms.",

    "Primary wastewater treatment involves the physical removal of large and small solid particles through sequential filtration and sedimentation.",

    "An oligotrophic lake has low nutrient content, cold and clear water, and supports relatively little aquatic life.",

    "Mature sperms are temporarily stored in the epididymis, where they undergo functional maturation and acquire motility.",

    "Vasectomy is a permanent surgical birth-control method in males in which a small portion of the vas deferens is removed or tied up to block sperm transport."
)

# ---------------------------------------------------------
# Tamil explanations
# ---------------------------------------------------------

$TamilExplanations = @(

    "மீசோசோயிக் பெருங்காலத்தில் ஊர்வன உயிரினங்கள், குறிப்பாக டைனோசர்கள், பூமியில் ஆதிக்கம் செலுத்தியதால் இக்காலம் ஊர்வன இனத்தின் பொற்காலம் என அழைக்கப்படுகிறது.",

    "கரு இடமாற்றம் தொழில்நுட்பத்தில் 8 -செல்களுக்கு மேற்பட்ட கருக்கோளம் கருப்பையினுள் (IUT) செலுத்தப்படுகிறது; 8 செல்கள் வரையிலான கருக்கள் அண்டநாளத்தில் செலுத்தப்படுகின்றன.",

    "மூலக்கூறு உயிரியலின் மைய செயல்திட்டத்தின்படி, மரபுத் தகவல் கடத்தப்படும் சரியான வரிசை இரட்டிப்பாதல் (DNA → DNA), படியெடுத்தல் (DNA → RNA) மற்றும் மொழிபெயர்த்தல் (RNA → புரதம்) ஆகும்.",

    "பெண் இனப்பெருக்கப் பாதையில் விந்து செல் அண்ட செல்லைத் துளைத்து கருவுறச் செய்யும் திறனைப் பெறும் உடற்செயலியல் நிகழ்வு திறனேற்றம் (Capacitation) எனப்படுகிறது.",

    "அலெக்சாண்டர் ஃபோன் ஹம்போல்ட்டின் சிற்றின செழுமை - நிலப்பரப்பு தொடர்பு சமன்பாடான log S = log C + Z log A என்பதில் ‘Z’ என்பது கோட்டின் சாய்வு நிலையைக் குறிக்கிறது.",

    "நன்னீரிலிருந்து கடல் நீருக்கு இனப்பெருக்கத்திற்காக இடம்பெயரும் விலங்கினங்கள் கட்டாட்ராமஸ் என அழைக்கப்படுகின்றன; விலாங்கு மீன்கள் இதற்கு உதாரணமாகும்.",

    "IgE எதிர்ப்பொருட்கள் மாஸ்ட் செல்கள் மற்றும் பேசோஃபில்களுடன் இணைந்து ஹிஸ்டமைனை வெளியேற்றுவதன் மூலம் ஒவ்வாமை வினைகளில் முக்கிய பங்கு வகிக்கின்றன.",

    "பாக்டீரியாக்களில் இணைதல் (Conjugation) முறையில் ஒரு பாக்டீரியாவிலிருந்து மற்றொரு பாக்டீரியாவிற்கு மரபணுப் பொருள் மாற்றப்பட்டு இனப்பெருக்கம் நடைபெறுகிறது.",

    "XO மற்றும் XY ஆகிய இரு வகை பால் நிர்ணய முறைகளிலும் ஆண் உயிரிகள் இரண்டு வகையான இனச்செல்களை உருவாக்குவதால், இவை வேறுபட்ட இனச்செல் ஆண் (Male heterogamety) தன்மைக்கு உதாரணங்களாகும்.",

    "வளர்கரு பிளாசக் கோட்பாட்டை (Germplasm theory) ஆகஸ்ட் வீஸ்மேன் முன்மொழிந்தார்.",

    "ஸ்டேட்டின்கள் கொலஸ்டிரால் உற்பத்திக்குத் தேவையான HMG-CoA ரிடக்டேஸ் நொதியின் செயல்பாட்டைத் தடுப்பதன் மூலம் இரத்தத்தின் கொலஸ்டிரால் அளவைக் குறைக்கின்றன.",

    "மருத்துவக் கழிவுகள் தொற்று அபாயம் கொண்டவை என்பதால் மறுசுழற்சி மற்றும் மீண்டும் பயன்படுத்துதல் முறை மருத்துவக் கழிவு மேலாண்மையில் கையாளப்படுவதில்லை.",

    "முழு நோயூக்கி உயிரிக்குப் பதிலாக அதன் குறிப்பிட்ட ஆன்டிஜன் பகுதிகளை மட்டும் பயன்படுத்தித் தயாரிக்கப்படும் தடுப்பூசிகள் துணையலகு மறுசேர்க்கை தடுப்பூசிகள் எனப்படும்.",

    "கொசுவின் இரைப்பைச் சுவரில் பிளாஸ்மோடியம் வைவாக்ஸின் ஊசிஸ்டுகள் (Oocysts) வளர்ச்சியடைந்து ஸ்போரோசோயிட்டுகளை உருவாக்குகின்றன.",

    "பழப்பூச்சியில் (டிரோசோபில்லா) X குரோமோசோம்களுக்கும் உடற் குரோமோசோம் தொகுதிகளுக்கும் உள்ள விகிதம் பாலினத்தை நிர்ணயிக்கிறது; 2A + XXY இல் இந்த விகிதம் 2:2 (1.0) ஆக இருப்பதால் இது இரட்டைமய பெண் ஆகும்.",

    "ELISA என்பது குறிப்பிட்ட ஆன்டிஜன் அல்லது எதிர்ப்பொருட்களைக் கண்டறிவதன் மூலம் நோய்க் கிருமிகளைக் கண்டறியப் பயன்படும் நோயெதிர்ப்பு சோதனையாகும்.",

    "DNA இழையிலுள்ள மரபுத் தகவல்கள் RNA பாலிமரேஸ் நொதியின் உதவியுடன் தூது RNA (mRNA) மூலக்கூறாக நகலெடுக்கப்படும் செயல்முறை படியெடுத்தல் எனப்படும்.",

    "திடீர் மரபுவழி மாற்றங்களின் மூலம் பரிணாமம் நடைபெறுகிறது என்பதை விளக்கும் திடீர் மாற்றத் தேர்வுக் கோட்பாட்டை ஹியூகோ டி விரிஸ் முன்மொழிந்தார்.",

    "பரந்த அளவிலான வெப்பநிலை மாறுபாடுகளைத் தாங்கி வாழும் விலங்குகள் மிகைவெப்ப வேறுபாட்டு உயிரிகள் (யூரிதெர்ம்கள்) என அழைக்கப்படுகின்றன.",

    "கழிவுநீர் சுத்திகரிப்பின் முதல்நிலையில் சல்லடை வடிகட்டுதல் மற்றும் படியவைத்தல் போன்ற இயற்பியல் முறைகள் மூலம் திடக்கழிவுப் பொருட்கள் நீக்கப்படுகின்றன.",

    "குறை உணவூட்ட நிலை (Oligotrophic) ஏரிகளில் ஊட்டச்சத்துகள் குறைவாக இருப்பதால் நீர் குளிர்ச்சியாகவும் தெளிவாகவும் காணப்படும்; உயிரிகளும் குறைவாகவே இருக்கும்.",

    "முதிர்ந்த விந்து செல்கள் விந்தக மேல் சுருள் குழலில் சேமிக்கப்பட்டு, அங்கு முதிர்ச்சியடைந்து நகரும் திறனைப் பெறுகின்றன.",

    "விந்து குழல் தடை (Vasectomy) என்பது ஆண்களில் விந்து நாளங்களை வெட்டி அல்லது கட்டி விந்து வெளியேறுவதைத் தடுக்கும் நிரந்தர அறுவை சிகிச்சை கருத்தடை முறையாகும்."
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

# ---------------------------------------------------------
# Read questions from a Markdown file
# ---------------------------------------------------------

function Read-Questions {
    param([string]$FilePath)

    if (!(Test-Path -LiteralPath $FilePath)) {
        throw "Source file not found: $FilePath"
    }

    $lines = Get-Content -LiteralPath $FilePath -Encoding UTF8

    $questions = @()
    $questionLines = @()
    $options = @()

    foreach ($rawLine in $lines) {
        $line = $rawLine.Trim()

        if ($line -match '^\s*[-*]\s+(.+)$') {
            if ($questionLines.Count -eq 0) {
                Write-Warning "Skipped orphan option in $FilePath : $line"
                continue
            }

            $options += $Matches[1].Trim()

            if ($options.Count -eq 4) {
                # Remove trailing blank lines between the question body and options
                while ($questionLines.Count -gt 0 -and $questionLines[-1] -eq "") {
                    if ($questionLines.Count -eq 1) {
                        $questionLines = @()
                    }
                    else {
                        $questionLines = @($questionLines[0..($questionLines.Count - 2)])
                    }
                }

                $questions += [PSCustomObject]@{
                    Question = ($questionLines -join "`r`n")
                    Options  = $options
                }

                $questionLines = @()
                $options = @()
            }
        }
        else {
            if ($options.Count -gt 0) {
                Write-Warning "Skipped incomplete block in $FilePath : $($questionLines[0])"
                $questionLines = @()
                $options = @()
            }

            if ($line -ne "" -or $questionLines.Count -gt 0) {
                $questionLines += $line
            }
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
$englishQuestions = @(Read-AllQuestions -Files $EnglishFiles)

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
    -OutputFolder $Output `
    -Suffix "" `
    -Explanations $EnglishExplanations

# Generate Tamil files
New-QuestionFiles `
    -Questions $tamilQuestions `
    -OutputFolder $Output `
    -Suffix "_ta" `
    -Explanations $TamilExplanations

Write-Host "`n========================================"
Write-Host "Question generation completed successfully!"
Write-Host "Year folder: $Output"
Write-Host "English files: $($englishQuestions.Count)"
Write-Host "Tamil files:   $($tamilQuestions.Count)"
Write-Host "========================================"

