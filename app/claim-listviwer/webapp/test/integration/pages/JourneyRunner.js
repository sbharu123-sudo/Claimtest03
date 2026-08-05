sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"claimlistviwer/test/integration/pages/ClaimsList.gen",
	"claimlistviwer/test/integration/pages/ClaimsObjectPage.gen",
	"claimlistviwer/test/integration/pages/LosstypesObjectPage.gen"
], function (JourneyRunner, ClaimsListGenerated, ClaimsObjectPageGenerated, LosstypesObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('claimlistviwer') + '/test/flpSandbox.html#claimlistviwer-tile',
        pages: {
			onTheClaimsListGenerated: ClaimsListGenerated,
			onTheClaimsObjectPageGenerated: ClaimsObjectPageGenerated,
			onTheLosstypesObjectPageGenerated: LosstypesObjectPageGenerated
        },
        async: true
    });

    return runner;
});

