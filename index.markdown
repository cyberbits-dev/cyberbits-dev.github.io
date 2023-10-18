---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---

<div id="banner">
  <div class="container d-flex align-items-center justify-content-center text-center h-100">
    <div>
    <h1 class="display-1">Transform your IT infrastructure</h1>
    <p class="fs-4 my-4">Unlock the full potential of your business with expert IT consulting services.</p>
    <a class="btn btn-dark px-4" role="button" rel="nofollow" href="#content">Get started</a>
    </div>
  </div>
</div>

<div class="container">
  <a id="content" href="#"></a>

  <div class="d-flex flex-column mb-3">
    <div class="my-5 text-center fs-4">
      Are you looking for a team of experienced IT consulting experts?
      We provide services and solutions for Free Software, privacy projects like Tor and cryptocurrencies.
      We specialize in decentralized hosting, system administration and custom development.
    </div>

    <div class="my-5 text-center">
      <div class="row">
        <div class="col">
          <h1>Clients</h1>

          <div class="row row-cols-1 row-cols-lg-3 g-2 g-lg-3">
            <div class="col">
              <a href="https://cyberbits.eu/" target="_blank">
                <div class="card text-bg-dark">
                  <img src="/assets/clients/cyberbits-eu.png" class="card-img" alt="cyberbits.eu">
                  <div class="card-img-overlay">
                    <h3 class="card-title">cyberbits.eu</h3>
                    <p class="card-text">Software mirror, PGP server, NTP server and more. We manage and improve the insfrastructure continually.</p>
                    <p class="card-text">
                      <kbd>#infrastructure</kbd>
                      <kbd>#devops</kbd>
                      <kbd>#networking</kbd>
                      <kbd>#chef</kbd>
                    </p>
                  </div>
                </div>
              </a>
            </div>
            <div class="col">
              <a href="https://dcr.farm/" target="_blank">
                <div class="card text-bg-dark">
                  <img src="/assets/clients/dcr-farm.png" class="card-img" alt="dcr.farm">
                  <div class="card-img-overlay">
                    <h3 class="card-title">dcr.farm</h3>
                    <p class="card-text">Cryptocurrency staking provider. We maintain the website and API up-to-date with the Decred blockchain and handle customer support.</p>
                    <p class="card-text">
                      <kbd>#crypto</kbd>
                      <kbd>#security</kbd>
                      <kbd>#golang</kbd>
                    </p>
                  </div>
                </div>
              </a>
            </div>
            <div class="col">
              <a href="https://cool.cash/" target="_blank">
                <div class="card text-bg-dark">
                  <img src="/assets/clients/cool-cash.png" class="card-img" alt="cool.cash">
                  <div class="card-img-overlay">
                    <h3 class="card-title">cool.cash</h3>
                    <p class="card-text">Wealth management software to manage a well diversified portfolio of assets. We develop and design the software in collaboration with the client.</p>
                    <p class="card-text">
                      <kbd>#api</kbd>
                      <kbd>#bespoke</kbd>
                      <kbd>#rubyonrails</kbd>
                    </p>
                  </div>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="my-5">
      <div class="row align-items-center">
        <div class="col d-none d-lg-block me-5">
          <img src="/assets/about-us.jpg" class="img-fluid rounded-5" alt="About us">
        </div>

        <div class="col">
          <h1>About us</h1>

          <p>
            Cyberbits.dev is an established IT consulting firm with a remote team of highly skilled professionals.
            We provide comprehensive IT solutions to businesses of all sizes.
          </p>

          <p>
            Our expertise lies in deliveries tailored IT strategies and technology infrastructure to help our clients stay ahead in today's rapidly evolving digital landscape.
            We are committed to delivering exceptional service, innovative solutions, and measurable results to drive our clients' success.
          </p>
        </div>
      </div>
    </div>

    <div class="pt-5">
      <div class="row">
        <div class="col-12 col-md-6">
          <h1>Contact us</h1>
          <p>
            Send us a message here or
            <a class="link-secondary" href="mailto:{{ site.email }}">email us</a>.
          </p>
        </div>

        <div class="col-12 col-md-6">
          <script>
            const sendForm = (e, form) => {
              e.preventDefault();
              const oops = (message) => alert(`Oops! We couldn't send your message. Maybe try another way.\n\nError: ${message}`);
              let params = new URLSearchParams();
              const inputs = form.querySelectorAll(".form-control");
              for (const input of inputs) { params.append(input.id, input.value); }
              fetch(`${form.action}?${params}`, { method: form.method }).then((response) => {
                if (response.ok) {
                  form.innerHTML = '<div class="alert alert-success" role="alert"><h1 class="alert-heading">Thank you!</h1><p>We\'ll be in touch soon.</p></div>';
                } else {
                  oops(response.statusText);
                }
              }).catch((e) => oops(e));
            }
          </script>
          <form action="https://api.cool.cash/v1/contact" method="get" onsubmit="sendForm(event, this)" class="row">
            <div class="col-12 col-md-6 mb-3">
              <label for="name" class="form-label">Name</label>
              <input type="text" class="form-control" id="name" required>
            </div>
            <div class="col-12 col-md-6 mb-3">
              <label for="email" class="form-label">Email address</label>
              <input type="email" class="form-control" id="email" required>
            </div>
            <div class="mb-3">
              <label for="message" class="form-label">Message</label>
              <textarea class="form-control" id="message" rows="3" required></textarea>
            </div>
            <div class="text-end">
              <button type="submit" class="btn btn-dark px-4">Send</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
