
export function decodedValue(colors: string[]): number{
  const config = new Map<string, number>([
    ['black', 0],
    ['brown', 1],
    ['red', 2],
    ['orange', 3],
    ['yellow', 4],
    ['green', 5],
    ['blue', 6],
    ['violet', 7],
    ['grey', 8],
    ['white', 9],
  ]);
  const x = `${config.get(colors[0])}${config.get(colors[1])}`
  const y: number = +x;
  return y;
}
