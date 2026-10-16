view: navigation_menu {

  dimension: navbar {
    type: yesno
    allow_fill: yes
    sql: true ;;
    html:
      <div style="font-family: 'Google Sans', Roboto, sans-serif; padding: 12px; background: #f8f9fa; border-radius: 8px; border: 1px solid #dadce0;">
      <div style="font-size: 16px; font-weight: 700; color: #1a73e8; margin-bottom: 12px; padding-bottom: 8px; border-bottom: 2px solid #1a73e8;">
        🧭 Ampere Analytics Portal
      </div>

      <!-- Level 1: Domain 1 (Expanded by default with 'open') -->
      <details open style="margin-bottom: 10px;">
        <summary style="font-weight: 600; font-size: 14px; color: #202124; cursor: pointer; padding: 6px; background: #e8f0fe; border-radius: 4px;">
          📁 1. IVV & Traceability
        </summary>
        <div style="padding-left: 14px; margin-top: 6px;">

          <!-- Level 2: Nested Sub-Category 1.1 -->
          <details open style="margin-bottom: 6px;">
            <summary style="font-weight: 500; font-size: 13px; color: #3c4043; cursor: pointer; padding: 4px;">
              📂 1.1 Last Run Execution
            </summary>
            <div style="padding-left: 16px; display: flex; flex-direction: column; gap: 4px; margin-top: 4px; font-size: 13px;">
              <a href="/dashboards/1" style="color: #1a73e8; text-decoration: none; font-weight: 600;">📊 Global Last Run Cockpit</a>
              <a href="/dashboards/2" style="color: #5f6368; text-decoration: none;">📈 Test Sets Progression</a>
            </div>
          </details>

          <!-- Level 2: Nested Sub-Category 1.2 -->
          <details style="margin-bottom: 6px;">
            <summary style="font-weight: 500; font-size: 13px; color: #3c4043; cursor: pointer; padding: 4px;">
              📂 1.2 Requirements (Codebeamer)
            </summary>
            <div style="padding-left: 16px; display: flex; flex-direction: column; gap: 4px; margin-top: 4px; font-size: 13px;">
              <a href="/dashboards/3" style="color: #5f6368; text-decoration: none;">📋 Horizontal Traceability</a>
              <a href="/dashboards/4" style="color: #5f6368; text-decoration: none;">🔍 Baseline Comparison</a>
            </div>
          </details>

        </div>
      </details>

      <!-- Level 1: Domain 2 -->
      <details style="margin-bottom: 10px;">
        <summary style="font-weight: 600; font-size: 14px; color: #202124; cursor: pointer; padding: 6px; background: #f1f3f4; border-radius: 4px;">
          📁 2. VIP FinOps & Billing
        </summary>
        <div style="padding-left: 14px; margin-top: 6px;">
          <details open style="margin-bottom: 6px;">
            <summary style="font-weight: 500; font-size: 13px; color: #3c4043; cursor: pointer; padding: 4px;">
              📂 2.1 GKE & Cloud Costs
            </summary>
            <div style="padding-left: 16px; display: flex; flex-direction: column; gap: 4px; margin-top: 4px; font-size: 13px;">
              <a href="/dashboards/5" style="color: #5f6368; text-decoration: none;">💶 VIP Cost Overview</a>
              <a href="/dashboards/6" style="color: #5f6368; text-decoration: none;">⚙️ GKE Namespace Split</a>
            </div>
          </details>
        </div>
      </details>
    </div>
    ;;
  }
}
