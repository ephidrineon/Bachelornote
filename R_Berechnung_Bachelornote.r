## Berechnung der Bachelor-Gesamtnote
# Setting up virtual environment
print("Starting R virtual environment...")
print("Executing script!")
options(digits=3)

# Input einlesen
current_gpa <- readline(prompt="Derzeitiger gesamt-GPA: ")
current_gpa <-gsub(",", ".", current_gpa)
current_gpa <- as.numeric(current_gpa)
print("Eingabe der Berechnungsgrundlage in CP")
print("ACHTUNG! Wenn die finale Note berechnet werden soll, mit der Standardanzahl der CP bei Beendigung rechnen")
print("Normalerweise 180 CP - Bachelorthesis CP")
base_cp <- readline(prompt="Berechnungsgrundlage in CP: ")
base_cp <- as.numeric(base_cp)
current_ba <- readline(prompt="(Voraussichtliche) Bachelor-Thesis-Note: ")
current_ba <-gsub(",", ".", current_ba)
current_ba <- as.numeric(current_ba)
base_bacp <- readline(prompt="CP für Thesis: ")
base_bacp <- as.numeric(base_bacp)

# Berechnung der Noten
weighted_grade_sum <- current_gpa * base_cp
print(paste0("Summe der gewichteten Noten: ", weighted_grade_sum), quote = FALSE)
print(paste0("Summe der zur Berechnung verwendeten CP: ", base_cp), quote = FALSE)
weighted_grade <- weighted_grade_sum / base_cp
print(paste0("Gewichtete Modulnote: ", weighted_grade_sum), quote = FALSE)

weighted_ba_grade_sum <- current_ba * base_bacp
full_cp <- base_cp + base_bacp
print(paste0("Bachelornote: ", current_ba), quote = FALSE)
print(paste0("Bachelor-CP: ", base_bacp), quote = FALSE)
print(paste0("Gewichtete Bachelornote: ", weighted_ba_grade_sum), quote = FALSE)

weighted_full_grade <- weighted_ba_grade_sum + weighted_grade_sum
final_grade <- weighted_full_grade / full_cp
print(paste0("Gewichtete Gesamtnote: ", weighted_full_grade), quote = FALSE)
print(paste0("Gesamte CP: ", full_cp), quote = FALSE)
print("", quote = FALSE)
print(paste0("Voraussichtliche finale Note: ", round(final_grade, digits = 3)), quote = FALSE)

