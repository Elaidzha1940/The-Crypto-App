//  /*
//
//  Project: TheCryptoApp
//  File: PreviewProvider.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.11.2023
//
//  */

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview() // Singleton
    private init() {  }
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
        currentPrice: 36202,
        marketCap: 707065705932,
        marketCapRank: 1,
        fullyDilutedValuation: 759729931543,
        totalVolume: 26099351964,
        high24H: 37904,
        low24H: 35579,
        priceChange24H: -1622.0380417709166,
        priceChangePercentage24H: -4.28834,
        marketCapChange24H: -32085146103.808594,
        marketCapChangePercentage24H: -4.34081,
        circulatingSupply: 19544287,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 69045,
        athChangePercentage: -47.59293,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: 53262.15188,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2023-11-16T23:46:34.975Z",
        sparklineIn7D: SparklineIn7D(
            price: [
                36401.767595186626,
                36335.308944018856,
                36553.80224354963,
                36505.27481212208,
                36661.211863449986,
                36768.42081912672,
                36530.67821736738,
                36723.681252943505,
                36864.25907128313,
                36748.30732417886,
                36751.99303149112,
                36718.80486542809,
                36652.02107225412,
                36473.68697082108,
                36515.382351784705,
                36539.479207502496,
                36583.472584982366,
                37101.867203690395,
                37060.88652837508,
                37122.95461027728,
                37066.82541942652,
                37093.38703367307,
                37367.476377411724,
                37258.15253886746,
                37240.624225309126,
                37312.556716368235,
                37270.163450106425,
                37329.13200110702,
                37388.482326184385,
                37344.249000720345,
                37287.44995504606,
                37049.76530697339,
                37132.25188033483,
                37065.83147561591,
                37105.77873505604,
                37091.76790761324,
                37093.190173934374,
                36977.879392178096,
                36972.25617493435,
                37053.82995578746,
                37001.95755812763,
                37013.2022660157,
                37131.35100517337,
                37142.42409876143,
                37294.8512087961,
                37111.65382054027,
                37169.09570828781,
                37174.97529316527,
                37137.071018833354,
                37168.838656410124,
                37010.251106951284,
                36962.46890873377,
                36896.46481244737,
                37122.722824306555,
                36882.519128243846,
                37006.003592326764,
                36925.46413909653,
                36999.848834259654,
                36988.86701365405,
                37111.306777162885,
                37157.1306391266,
                37142.560686217665,
                37107.86989010588,
                37081.180389851535,
                37099.8839553007,
                37087.44026060873,
                37021.26410518209,
                37106.48751843482,
                37159.90984664138,
                37198.72767934926,
                37138.062934782065,
                37092.25248348423,
                37197.37464625415,
                37117.1167830375,
                37154.778477139655,
                37185.268117331856,
                37160.19989130365,
                37067.69698212008,
                37086.97701787372,
                37253.190610682024,
                37158.102457258974,
                37005.76146801182,
                36918.09368303102,
                36950.968995869705,
                36954.144709818014,
                36981.04563123201,
                37051.862925313406,
                37004.78065396558,
                36988.99704895734,
                36795.57113424511,
                36951.70031013419,
                36846.299498709894,
                36771.18254565363,
                36826.699952108465,
                36877.82472769619,
                36648.163279346496,
                36762.38073450954,
                36853.55932751403,
                36815.67139117826,
                36437.7836967649,
                36556.12320473314,
                36549.16204829837,
                36223.31232606392,
                36407.95318118144,
                36423.937400058334,
                36460.327543816646,
                36510.58204228086,
                36613.891555707756,
                36666.87962550011,
                36698.75352811377,
                36740.39552999041,
                36526.080298771296,
                36509.54328582069,
                36330.5454067207,
                36395.086313228174,
                36554.31613769191,
                36595.39415854397,
                36132.70318203377,
                36298.16148703754,
                36152.8269043818,
                35284.820419943026,
                35289.034993556146,
                35266.335242154084,
                35578.75303693282,
                35600.915413431205,
                35545.201433454065,
                35553.4929570494,
                35501.056059298586,
                35480.001015120666,
                35389.21900849932,
                35577.049505337236,
                35629.027714432654,
                35619.25073013464,
                35574.9178249679,
                35815.42238135602,
                35797.48206930911,
                35859.259689371625,
                36250.773207587685,
                36282.24840171514,
                36136.335084775885,
                36119.57143025458,
                36397.07945959704,
                36392.07898045584,
                36496.59967868011,
                37433.21417703956,
                37492.220592756494,
                37463.40214037469,
                37655.825028585976,
                37761.00853505901,
                37903.66245166294,
                37826.36685950436,
                37464.28404051854,
                37557.96985041627,
                37443.56247829998,
                37453.64109418541,
                37433.45025617561,
                37540.40254352169,
                37449.44822077931,
                37353.98537885555,
                37379.06249787419,
                37337.02999503687,
                37226.388081132034,
                37115.752578242944,
                36861.18679414148,
                36739.645841596954,
                36379.79999641866,
                36544.51628227986,
                36448.385891631624
            ]),
        priceChangePercentage24HInCurrency: -4.288340929998626,
        currentHoldings: 1.5)
}


