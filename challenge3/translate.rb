
MAP = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', 
        '-..' => 'D', '.' => 'E', '..-.' => 'F', 
        '--.' => 'G', '....' => 'H', '..' => 'I',
        '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
        '--' => 'M', '-.' => 'N', '---' => 'O',
        '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
        '-' => 'T', '..-' => 'U', '...-' => 'V', 
        '9' => '.--', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z',
        '.-.-.-' => '.', '--..--' => ',', '..--..' => '?',
        '-..-.' => '/', '.--.-.' => '@',
        '.----' => '1', '..---' => '2', '...--' => '3',
        '....-' => '4', '.....' => '5', '-....' => '6',
        '--...' => '7', '---..' => '8', '----.' => '9',
        '-----' => '0'
}

result = []

file='challenge3_sample.txt'
File.readlines(file).each do |line|
  words = line.split('   ')
  words.each do | word | 
    letters = word.split(' ')
    letters.each do | letter | 
      result << MAP[letter] if MAP[letter]
    end
    result << ' '
  end
  puts result.join('').strip
end
