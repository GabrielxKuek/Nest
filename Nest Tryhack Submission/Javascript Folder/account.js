document.addEventListener("DOMContentLoaded", function () {
    const tabs = document.querySelectorAll(".tab");
    const sections = document.querySelectorAll("section");

    tabs.forEach((tab, tabIndex) => {
        tab.addEventListener("click", () => {
            // Remove the "active" class from all tabs and sections
            tabs.forEach((t) => t.classList.remove("active"));
            sections.forEach((s) => s.classList.remove("active-section"));

            // Add the "active" class to the clicked tab and corresponding section
            tab.classList.add("active");
            sections[tabIndex].classList.add("active-section");
        });
    });

    // Initially, activate the first tab and section
    tabs[0].click();
});



