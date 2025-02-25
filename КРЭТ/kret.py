import pandas as pd
import os
from openpyxl import Workbook
from openpyxl.styles import Font, Alignment

print("Укажите путь к папке с файлами")
folder_path = input()

dataframes = []

for file in os.listdir(folder_path):
    if file.lower().endswith(".xlsx"):
        try:
            df = pd.read_excel(os.path.join(folder_path, file))
            dataframes.append(df)
        except Exception as e:
            print(f"Не удалось прочитать файл {file}: {e}")

merged_df = pd.concat(dataframes, ignore_index=True, sort=False)

result = merged_df.groupby(["ID", "Средство РЭБ"], as_index=False).agg(
    lambda x: x.sum() if x.dtype in ['int64', 'float64'] else ' '.join(str(v) for v in x)
)

output_file = "Объединение.xlsx"
result.to_excel(output_file, index=False)

wb = Workbook()
ws = wb.active

for r_idx, row in enumerate(result.itertuples(index=False), 1):
    for c_idx, value in enumerate(row, 1):
        cell = ws.cell(row=r_idx, column=c_idx, value=value)
        cell.font = Font(name='Times New Roman', size=16)
        cell.alignment = Alignment(horizontal='center', vertical='center')

wb.save(output_file)
