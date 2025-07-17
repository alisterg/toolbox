# Regex Cheat Sheet

## 1. Basic Syntax
`.`           : Any single character except newline  
`\`           : Escape special characters (e.g. `\.` matches a literal dot)  
`[...]`       : Character class (any one of the contained chars)  
`[^...]`      : Negated character class (any char **not** contained)  
`(...)`       : Capturing group  
`(?:...)`     : Non-capturing group  
`|`           : Alternation (logical OR)  

## 2. Quantifiers
`*`           : 0 or more  
`+`           : 1 or more  
`?`           : 0 or 1  
`{n}`         : Exactly _n_ times  
`{n,}`        : _n_ or more times  
`{,m}`        : Up to _m_ times (0..m)  
`{n,m}`       : Between _n_ and _m_ times  

## 3. Anchors
`^`           : Start of string (or line in multiline mode)  
`$`           : End of string (or line in multiline mode)  
`\b`          : Word boundary  
`\B`          : Non-word boundary  

## 4. Character Classes & Shorthands
`\d`          : Digit (0–9)  
`\D`          : Non-digit  
`\w`          : Word char (alphanumeric + underscore)  
`\W`          : Non-word char  
`\s`          : Whitespace (space, tab, newline…)  
`\S`          : Non-whitespace  

## 5. Groups & Lookaround
`(foo)`       : Capture "foo"
`(?:foo)`     : Group "foo" without capturing  
`(?=foo)`     : Positive lookahead—ensure "foo" follows  
`(?!foo)`     : Negative lookahead—ensure "foo" does **not** follow  
`(?<=foo)`    : Positive lookbehind—ensure "foo" precedes  
`(?<!foo)`    : Negative lookbehind—ensure "foo" does **not** precede  

## 6. Common Patterns

| Pattern                                       | Matches                           |
|-----------------------------------------------|-----------------------------------|
| ``^[A-Za-z]+$``                               | Only letters (entire string)      |
| ``^\d{4}-\d{2}-\d{2}$``                       | Date in YYYY-MM-DD                |
| ``\d{3}-\d{3}-\d{4}``                         | US phone number format            |
| ``\b\w+@\w+\.\w{2,}\b``                       | Simple email address              |
| ``<([A-Za-z][A-Za-z0-9]*)\b[^>]*>(.*?)</\1>`` | Basic HTML tag pair               |

## 7. Flags (Modifiers)
`i`           : Case-insensitive  
`g`           : Global (find all matches)  
`m`           : Multiline (`^`/`$` match line boundaries)  
`s`           : Dot-all (`.` matches newline)  
`x`           : Verbose (ignore whitespace/comments)  
