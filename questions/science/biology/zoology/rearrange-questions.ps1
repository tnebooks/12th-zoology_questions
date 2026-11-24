# =========================================================
# Move 2021-2026 English & Tamil Zoology question files
# into their respective TN Class 12 lesson folders
# Output naming: <year>-<q>.md and <year>-<q>_ta.md
# =========================================================

$SourceBase = "."
$TargetBase = ".\questions\zoology"

# Map each "Year-QuestionNumber" to its lesson folder name
$LessonMap = @{
    # -------------------- 2021 --------------------
    "2021-1"  = "evolution"                                # Golden age of reptiles
    "2021-2"  = "reproductive-health"                      # Embryo transfer (>8 blastomeres)
    "2021-3"  = "molecular-genetics"                       # Central dogma sequence
    "2021-4"  = "human-reproduction"                       # Capacitation
    "2021-5"  = "biodiversity-and-its-conservation"        # Species-area relationship (Z)
    "2021-6"  = "organisms-and-populations"                # Catadromous animals
    "2021-7"  = "immunology"                               # Allergy (IgE)
    "2021-8"  = "reproduction-in-organisms"                # Bacterial conjugation
    "2021-9"  = "principles-of-inheritance-and-variation"  # Male heterogamety (XO, XY)
    "2021-10" = "evolution"                                # Germplasm theory
    "2021-11" = "microbes-in-human-welfare"                # Statins
    "2021-12" = "environmental-issues"                     # Biomedical waste disposal
    "2021-13" = "applications-of-biotechnology"            # Subunit recombinant vaccines
    "2021-14" = "human-health-and-diseases"                # Plasmodium sporozoites (Oocysts)
    "2021-15" = "principles-of-inheritance-and-variation"  # Drosophila 2A + XXY
    "2021-16" = "applications-of-biotechnology"            # ELISA
    "2021-17" = "molecular-genetics"                       # mRNA transcription
    "2021-18" = "evolution"                                # Hugo de Vries mutation theory
    "2021-19" = "organisms-and-populations"                # Eurytherms
    "2021-20" = "microbes-in-human-welfare"                # Primary wastewater treatment
    "2021-21" = "environmental-issues"                     # Oligotrophic lake
    "2021-22" = "human-reproduction"                       # Epididymis
    "2021-23" = "reproductive-health"                      # Vasectomy

    # -------------------- 2022 --------------------
    "2022-1"  = "environmental-issues"                     # Radioactive waste disposal
    "2022-2"  = "reproduction-in-organisms"                # Variations in sexual reproduction
    "2022-3"  = "biodiversity-and-its-conservation"        # Amphibians extinction risk
    "2022-4"  = "principles-of-inheritance-and-variation"  # Drosophila 3A + 2X (intersex)
    "2022-5"  = "molecular-genetics"                       # Human genome base pairs (3.1B)
    "2022-6"  = "reproductive-health"                      # Contraceptive pill action
    "2022-7"  = "organisms-and-populations"                # Eurytherms
    "2022-8"  = "immunology"                               # B-lymphocyte activation
    "2022-9"  = "microbes-in-human-welfare"                # Molasses for ethanol
    "2022-10" = "human-reproduction"                       # LH -> Leydig -> Testosterone
    "2022-11" = "evolution"                                # Hardy-Weinberg equilibrium
    "2022-12" = "principles-of-inheritance-and-variation"  # ABO blood group multiple alleles
    "2022-13" = "human-health-and-diseases"                # Haemozoin
    "2022-14" = "organisms-and-populations"                # Migration adaptation
    "2022-15" = "microbes-in-human-welfare"                # Biological wastewater treatment (BOD)
    "2022-16" = "molecular-genetics"                       # mRNA transcription
    "2022-17" = "microbes-in-human-welfare"                # Cyclosporin-A
    "2022-18" = "evolution"                                # Age of fishes (Devonian)
    "2022-19" = "organisms-and-populations"                # Competition leads to extinction
    "2022-20" = "biodiversity-and-its-conservation"        # Amphibians extinction risk
    "2022-21" = "principles-of-inheritance-and-variation"  # ABO cross IA IO x IA IB
    "2022-22" = "applications-of-biotechnology"            # PCR steps
    "2022-23" = "human-reproduction"                       # Epididymis

    # -------------------- 2023 --------------------
    "2023-1"  = "organisms-and-populations"                # Competition leads to extinction
    "2023-2"  = "microbes-in-human-welfare"                # Statins
    "2023-3"  = "human-reproduction"                       # Gastrulation
    "2023-4"  = "molecular-genetics"                       # Methionine codon (AUG)
    "2023-5"  = "principles-of-inheritance-and-variation"  # ZW-ZZ sex determination
    "2023-6"  = "evolution"                                # Golden age of reptiles
    "2023-7"  = "evolution"                                # First human-like being (Hominids)
    "2023-8"  = "organisms-and-populations"                # Catadromous animals
    "2023-9"  = "human-reproduction"                       # Spermarche
    "2023-10" = "human-health-and-diseases"                # Exo-erythrocytic schizogony
    "2023-11" = "human-reproduction"                       # Testosterone (Leydig cell)
    "2023-12" = "biodiversity-and-its-conservation"        # Over-exploitation extinctions
    "2023-13" = "immunology"                               # Allergy (IgE)
    "2023-14" = "environmental-issues"                     # DDT biomagnification
    "2023-15" = "reproduction-in-organisms"                # Bacterial conjugation
    "2023-16" = "principles-of-inheritance-and-variation"  # Patau's syndrome
    "2023-17" = "reproduction-in-organisms"                # Exogenous budding
    "2023-18" = "human-reproduction"                       # Colostrum (IgA)
    "2023-19" = "immunology"                               # Interferons
    "2023-20" = "reproductive-health"                      # Contraceptive pills composition
    "2023-21" = "human-health-and-diseases"                # Athlete's foot (Fungi)
    "2023-22" = "biodiversity-and-its-conservation"        # Amphibians extinction risk
    "2023-23" = "microbes-in-human-welfare"                # Lipase for oily stains

    # -------------------- 2024 --------------------
    "2024-1"  = "human-reproduction"                       # Colostrum (IgA)
    "2024-2"  = "microbes-in-human-welfare"                # UV rays wastewater disinfectant
    "2024-3"  = "human-reproduction"                       # Mesovarium
    "2024-4"  = "immunology"                               # B-cell activation
    "2024-5"  = "molecular-genetics"                       # mRNA transcription
    "2024-6"  = "reproductive-health"                      # Average foetal heart rate
    "2024-7"  = "evolution"                                # Wings of birds and butterflies
    "2024-8"  = "evolution"                                # Modern man (Quaternary)
    "2024-9"  = "microbes-in-human-welfare"                # Molasses for ethanol
    "2024-10" = "applications-of-biotechnology"            # GEAC
    "2024-11" = "human-health-and-diseases"                # Pathogens and diseases match
    "2024-12" = "organisms-and-populations"                # r-species (insects)
    "2024-13" = "principles-of-inheritance-and-variation"  # ABO blood group multiple alleles
    "2024-14" = "biodiversity-and-its-conservation"        # IUCN Red List
    "2024-15" = "reproduction-in-organisms"                # Variations in sexual reproduction
    "2024-16" = "human-reproduction"                       # Androgen Binding Protein (ABP)
    "2024-17" = "organisms-and-populations"                # Sucker fish and shark (Commensalism)
    "2024-18" = "reproduction-in-organisms"                # Paedogenetic parthenogenesis
    "2024-19" = "principles-of-inheritance-and-variation"  # Down's syndrome (Trisomy 21)
    "2024-20" = "human-health-and-diseases"                # Exo-erythrocytic schizogony
    "2024-21" = "evolution"                                # Term 'Biogenesis' (Henry Bastian)
    "2024-22" = "biodiversity-and-its-conservation"        # Project Tiger (Uttarakhand)
    "2024-23" = "applications-of-biotechnology"            # ADA deficiency (SCID)

    # -------------------- 2025 --------------------
    "2025-1"  = "immunology"                               # Inflammation
    "2025-2"  = "molecular-genetics"                       # First codon deciphered (UUU)
    "2025-3"  = "principles-of-inheritance-and-variation"  # Klinefelter's syndrome
    "2025-4"  = "evolution"                                # Neanderthal brain capacity
    "2025-5"  = "reproductive-health"                      # Bacterial STDs
    "2025-6"  = "applications-of-biotechnology"            # ELISA
    "2025-7"  = "human-reproduction"                       # Lactation hormone (Prolactin)
    "2025-8"  = "biodiversity-and-its-conservation"        # Tropical speciation & diversity
    "2025-9"  = "organisms-and-populations"                # Response to abiotic factors (diagram)
    "2025-10" = "reproduction-in-organisms"                # Bacterial conjugation
    "2025-11" = "biodiversity-and-its-conservation"        # National Biodiversity Authority HQ
    "2025-12" = "molecular-genetics"                       # Operons
    "2025-13" = "microbes-in-human-welfare"                # Citric acid (Aspergillus niger)
    "2025-14" = "environmental-issues"                     # Ozone thickness (Dobson units)
    "2025-15" = "human-health-and-diseases"                # Haemozoin
    "2025-16" = "applications-of-biotechnology"            # PCR steps
    "2025-17" = "reproduction-in-organisms"                # Variations in sexual reproduction
    "2025-18" = "principles-of-inheritance-and-variation"  # Barr bodies (N - 1 rule)
    "2025-19" = "reproductive-health"                      # Diaphragms, cervical caps, vaults
    "2025-20" = "organisms-and-populations"                # Biotic potential
    "2025-21" = "molecular-genetics"                       # Meselson and Stahl experiment
    "2025-22" = "microbes-in-human-welfare"                # Citric acid (Aspergillus niger)
    "2025-23" = "human-reproduction"                       # Sperm structure (Acrosome/Mitochondria)

    # -------------------- 2026 --------------------
    "2026-1"  = "reproduction-in-organisms"                # Arrhenotoky
    "2026-2"  = "human-reproduction"                       # Orchidectomy
    "2026-3"  = "reproductive-health"                      # Hormonal contraceptive pill actions
    "2026-4"  = "principles-of-inheritance-and-variation"  # Pedigree symbol (diagram)
    "2026-5"  = "molecular-genetics"                       # Hershey and Chase experiment
    "2026-6"  = "molecular-genetics"                       # Human genome matching
    "2026-7"  = "evolution"                                # Wings of birds and butterflies
    "2026-8"  = "human-health-and-diseases"                # Vaccine-controlled diseases
    "2026-9"  = "immunology"                               # Allergy (IgE)
    "2026-10" = "microbes-in-human-welfare"                # Molasses for ethanol
    "2026-11" = "reproduction-in-organisms"                # Clones through asexual reproduction
    "2026-12" = "organisms-and-populations"                # Sucker fish and shark (Commensalism)
    "2026-13" = "organisms-and-populations"                # Term 'Niche' (Charles Elton)
    "2026-14" = "biodiversity-and-its-conservation"        # Amphibians extinction risk
    "2026-15" = "microbes-in-human-welfare"                # UV rays wastewater disinfectant
    "2026-16" = "reproduction-in-organisms"                # Parthenogenesis (Charles Bonnet)
    "2026-17" = "human-reproduction"                       # Androgen Binding Protein (ABP)
    "2026-18" = "reproductive-health"                      # Contraceptive methods match
    "2026-19" = "principles-of-inheritance-and-variation"  # ABO progeny phenotypes (A x B)
    "2026-20" = "molecular-genetics"                       # 20 amino acids in protein synthesis
    "2026-21" = "microbes-in-human-welfare"                # Cyclosporin-A
    "2026-22" = "applications-of-biotechnology"            # First clinical gene therapy (SCID)
    "2026-23" = "biodiversity-and-its-conservation"        # Tropical speciation & diversity
}

# Create all lesson folders (plus required assets folders)
$LessonFolders = @(
    "microbes-in-human-welfare",
    "principles-of-inheritance-and-variation",
    "principles-of-inheritance-and-variation\assets",
    "biodiversity-and-its-conservation",
    "human-health-and-diseases",
    "reproduction-in-organisms",
    "environmental-issues",
    "organisms-and-populations",
    "organisms-and-populations\assets",
    "human-reproduction",
    "immunology",
    "applications-of-biotechnology",
    "evolution",
    "molecular-genetics",
    "reproductive-health"
)

foreach ($folder in $LessonFolders) {
    New-Item -ItemType Directory -Path (Join-Path $TargetBase $folder) -Force | Out-Null
}

$movedCount = 0
$missingCount = 0

foreach ($year in 2021..2026) {
    for ($q = 1; $q -le 23; $q++) {
        $key = "$year-$q"
        $lesson = $LessonMap[$key]

        if ([string]::IsNullOrWhiteSpace($lesson)) {
            Write-Warning "No lesson mapped for $key"
            continue
        }

        $destFolder = Join-Path $TargetBase $lesson

        foreach ($suffix in @("", "_ta")) {
            $srcFile = Join-Path (Join-Path $SourceBase $year) "$q$suffix.md"
            $destFile = Join-Path $destFolder "${year}-${q}${suffix}.md"

            if (!(Test-Path -LiteralPath $srcFile)) {
                Write-Warning "Source file not found: $srcFile"
                $missingCount++
                continue
            }

            $content = Get-Content -LiteralPath $srcFile -Raw -Encoding UTF8

            # Update image links to assets/<image> and move referenced PNGs if present
            $imgMatches = [regex]::Matches($content, '!\[\]\(([^/\\)]+\.png)\)')
            foreach ($m in $imgMatches) {
                $imgName = $m.Groups[1].Value
                $content = $content.Replace("![]($imgName)", "![](assets/$imgName)")

                $assetsFolder = Join-Path $destFolder "assets"
                New-Item -ItemType Directory -Path $assetsFolder -Force | Out-Null

                $possibleImgPaths = @(
                    (Join-Path (Join-Path $SourceBase $year) $imgName),
                    (Join-Path $SourceBase $imgName)
                )

                foreach ($imgSrc in $possibleImgPaths) {
                    if (Test-Path -LiteralPath $imgSrc) {
                        Move-Item -LiteralPath $imgSrc -Destination (Join-Path $assetsFolder $imgName) -Force
                        Write-Host "Moved asset: $imgSrc -> $assetsFolder\$imgName"
                        break
                    }
                }
            }

            Set-Content -LiteralPath $destFile -Value $content -Encoding UTF8 -NoNewline
            Remove-Item -LiteralPath $srcFile -Force

            Write-Host "Moved: $srcFile -> $destFile"
            $movedCount++
        }
    }
}

Write-Host "`n========================================"
Write-Host "Question organization completed!"
Write-Host "Files moved:   $movedCount"
Write-Host "Files missing: $missingCount"
Write-Host "========================================"