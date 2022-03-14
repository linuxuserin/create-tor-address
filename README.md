# create-tor-address

**Create Tor Address**

Github Action to create a Tor address.

## Requirements

- **`name`** - the starting name for the address

## Usage

```yml
name: Generate Address

"on":
  push:
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    name: Create address
    steps:
      - name: address creator
        id: test
        uses: linuxuserin/create-tor-address@main
        with:
          name: 'test'
      - uses: crazy-max/ghaction-github-pages@v2.1.3
        with:
          # the output branch we mentioned above
          target_branch: testkeys
          build_dir: keys
          keep_history: true
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## Time to Compute

A rough estimate of time to compute is:

<table border="1">
  <thead>
    <tr>
      <th>Characters</th>
      <th>Time</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>Less than 1 second</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Less than 1 second</td>
    </tr>
    <tr>
      <td>3</td>
      <td>Less than 1 second</td>
    </tr>
    <tr>
      <td>4</td>
      <td>2 seconds</td>
    </tr>
    <tr>
      <td>5</td>
      <td>1 minute</td>
    </tr>
    <tr>
      <td>6</td>
      <td>30 minutes</td>
    </tr>
    <tr>
      <td>7</td>
      <td>1 day</td>
    </tr>
    <tr>
      <td>8</td>
      <td>25 days</td>
    </tr>
    <tr>
      <td>9</td>
      <td>2.5 years</td>
    </tr>
    <tr>
      <td>10</td>
      <td>40 years</td>
    </tr>
    <tr>
      <td>11</td>
      <td>640 years</td>
    </tr>
    <tr>
      <td>12</td>
      <td>10 millennia</td>
    </tr>
    <tr>
      <td>13</td>
      <td>160 millennia</td>
    </tr>
    <tr>
      <td>14</td>
      <td>2.6 million years</td>
    </tr>
  </tbody>
</table>

## License

open sourced under [MIT](LICENSE)
