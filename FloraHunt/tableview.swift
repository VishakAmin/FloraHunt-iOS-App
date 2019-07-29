//
//  tableview.swift
//  Plant Identifier
//
//  Created by harsh on 25/04/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import UIKit


//var countryNameArr : NSArray = []
//var image : NSArray = []
class ViewController : UIViewController{
                             
                             
     var flowerNameArr = ["Aconitum.(Ranunculus Family)","African Daisy. (Gazania)", "Agapanthus. (Star of Bethlehem)" , "Ageratum houstonianum. (Floss Flower)" ,  "Alchemilla. (Lady's Mantle)" ,"Allium roseum. (Onion, Garlic)" ,"Alstroemeria.(Peruvian Lily)","Alyssum. (Sweet Alyssum)" ,"Amaranthus(Prince's Feather)", "Amaryllis. (Hippeastrum)" , "Anemone.(Windflower)","Angelonia.(Summer Snapdragon)" , "Anthurium.(Flamingo Flower)","Antirrhinum majus.(Snapdragon Flower)","Aquilegia.(Columbine Grannys Bonnet)","Asclepias syriaca.(Purple Milkweed)","Aster.(Daisy Family.Asteraceae)","Astilbe.(False Goats Beard, False Spirea)","Astrantia.(Masterwort)","Aubreita deltoidea.(Also known as Aubretia)","Baby's Breath. (Gypsophila)", "Bachelor's Button(Cornflower)","Balloon Flower(Platycodon grandiflorus)","Bee Balm Flower. (Monarda)","Begonia(Begoniaceae)","Belflower(Campanula)","Bergenia(Saxifragas)","Black eyed susan(rudbeckia)","Blanket Flower(Gaillardia)","Blazing Star(Gayfeather)","Bleeding Heart(Dicentra)","Bluebell(Hyacinth Family)","Blue eyed Grass(Sisyrinchum)","Blue Star Flower(Amsonia)","Bouvardia(Firecracker plant)","Buddleja (Butterfly bush)","Bush morning Glory(ipomea)","Buttercuo(Ranunculus)","Calendula officinalis","California Poppy (Eschscholzia californica).","Calla Lily. (Arum Lily). Araceae.","Campanula latifolia. (Giant Bellflower).","Candytuft. (Iberis).","Canna Lily. (Zingiberales).","Cape Primrose. (Streptocarcus).","Cardinal Flower. (Lobelia cardinalis).","Carnation. (Dianthus caryophyllus).","Celosia. (Amarynth Family. Wool flower).","Chrysanthemum. (Asteraceae).","Clarkia. (Farewell to Spring).","Clematis. (Ranunculus).","Clover. (Pea Family).","Cockscomb. (Celosia).  Amaranthaceae.","Columbine. (Aquilegia). Granny's Bonnet.","Coneflower. Echinacea. (Asteraceae).","Coral Bells. (Saxifragaceae).","Coreopsis. Asteraceae.","Cosmos.  (Asteraceae).","Cotoneaster. Milk Flower. Deer Resistant. (Rosaceae).","Cranesbill Geranium. (Hardy Geranium, Rock Cranesbill).","Creeping Phlox. (Phlox stolonifera).","Crocosmia. (Monbretia).","Crocus. (Iridaceae).","Crown Imperial. (Fritillaria).","Cuckoo Flower. (Cardamine pratensis).","Cyclamen. (Myrsinaceae).","Daffodil. (Narcissus).","Dahlia. (Aster Family).","Daisy. (Aster Family).","Daphne. (Daphne odora, Winter Daphne).","Day Lily. (Hemerocallis).","Delphinium. (Larkspur).  Ranunculus Family.","Desert Rose. (Dogbane).","Dianella. (Flax Lily)","Dianthus. (Pinks, Sweet William). Carnation Family.","Diascia. (Twin Spur).","Dichondra. Morning Glory Family. (Convolvulus).","Dietes. (Wild Iris). Iridaceae Family.","Dutch Iris. (Iris hollandia). Iridaceae Family.","Echinacea. (Coneflower).","Echium. (Boraginaceae).","English Bluebell.","Erica. (Heather).","Erigeron. (Seaside Daisy).","Eustoma. (Lisianthus).","Evening Primrose. (Sun Cup, Sun Drop).","Everlasting Daisy. (Strawflower).","Euphorbia cyathophor. (Mexican Fireplant, Summer Pointsettia).","Flannel Flower. (Actinotus helianthi). Australian Native.","Flax Flower. (Linseed).","Floss Flower. (Ageratum).","Forget Me Not. (Mycositis).","Forsythia. (Golden Bells).","Foxglove. (Digitalis).","Frangipani. (Plumeria).","Freesia. (Iris Family).","French Marigold. (Tagetes).","Fuschia. (Lady's Eardrop).","Gaillardia. Blanket Flower.","Gardenia. (Jasminoides).","Geranium. (Cranesbill).","Gaura. (Whirling Butterflies).","Gerbera.","Gladiolus(Iris Family)","Goldenrod. (Solidago).","Grape Hyacinth. (Muscari).","Gypsophila. (Baby's Breath).","Heather. (Erica).","Hebe.  'Showy Speedwell'. (New Zealand Native).","Helenium. (Sneezeweed).","Heliotrope(Cherry Pie Plant)","Hellebore. (Winter rose).","Hibiscus.  Hibiscus rosa-sinensis. (Rose Mallow).","Hollyhock. (Alcea Rosea).","Honesty. (Lunaria).","Honeysuckle. (Lonicera).","Hosta. (Plantain Lily).","Hyacinth. (Asparagus Family).","Hydrangea. (Hortensia).","Hypericum. (St. John's Wort).","Iberis. (Candytuft).","Iceland Poppy. (Papaver nudicaule).","Ice Plant. (Delosperma).","Ilex. (Holly).","Impatiens. (Busy Lizzie).","Ipheion uniflorum. Starflower, Spring Starflower. (Amaryllis Family).","Ipomoea alba. (Moonflower Vine).","Ipomoea. (Morning Glory).","Iris. (Iridaceae).","Ixia. (Corn Lily). Iris Family.","Ixora. (West Indian Jasmine).","Jaborosa. (Nightshade Family).","Jacob's Ladder. (Polemonium).","Jamesia americana. (Hydrangea Family).","Jasmine.  (Jasmine officinale).","Jonquil. (Narcissus).","Kaffir Lily. (Clivia miniata).","Kalmia. (Heath).","Kangaroo Paw. (Australian Native).","Knautia macedonica. (Macedonia scabiosa).","Kniphofia. (Red Hot Poker Plant).","Kolkwitzia. (Beauty Bush). Caprifoliaceae Family.","Lady's Slipper. (Cypripedium).","Lantana. (Shrub Verbena).","Lavatera. (Mallow).","Lavender. (Lavandula).","Lechenaultia. (Australian Native).","Lilac. (Syringa vulgaris).","Lily. (Lilium).","Lily of the Valley. (Convallaria majalis).","Linaria. (Snapdragon Family).","Lisianthus. (Euphoma).","Lobelia. (Asthma Weed).","Lotus. (Nelumbo nucifera).","Love in the Mist. (Nigella).","Lunaria. (Money Plant).","Lupin. (Lupinus).","Magnolia. (Magnoliaceae).","Mallow. (Lavatera).","Maltese Cross. (Lychnis chalcedonica).","Mandevilla. (Chilean Jasmine).","Marguerite Daisy. (Argyranthemum).","Marigold.  (Tagetes).","Matthiola. (Stock Flower).","Mayflower. (Trailing Arbutus).","Meconopsis. (Blue Himalayan Poppy).","Mimosa. (Mimosa pudica). Touch Me Not.","Mina lobata. (Spanish Flag).","Monk's Hood. (Aconitum).","Moonflower. (Ipomea alba).","Morning Glory. (Ipomea purpurea).","Muscari. (Grape Hyacinth).","Narcissus. (Paper Whites).","Nasturtiums. (Tropaeolum).","Nemesia. (Plantaginaceae Family).","Nemophila. (Baby Blue Eyes).","Nepeta. (Catmint).","Nerine.  (Amaryllis Family).","Nicotiana. (Tobacco Plant).","Nierembergia. (Cup Flower).","Nigella. (Love in the Mist).","Nolana. (Chilean Bell Flower). Nightshade Family. Seeds available online.","Nymphea. (Water Lily).","Orchid. (Orchidaceae).","Oriental Lily. (Stargazer).","Oriental Poppy. (Papaver).","Ornamental Onion. (Allium).","Osteospermum. (Calendula Family, Cape Daisy).","Oyster Plant. (Acanthus mollis).","Ox Eye Daisy. (Leucanthemum vulgare).","Painted Daisy. (Tanacetum coccineum).","Pansy. (Viola wittrockiana).","Passion Flower. (Passiflora).","Peace Lily. (Lilium).","Pelargonium.  (Angel Eyes).","Penstemon. (Beard Tongue).","Peony. (Paeoniaceae Family)","Persian Buttercup. (Ranunculus).","Peruvian Lily. (Alstroemeria).","Petunia. (Solanaceae). Nightshade Family.","Phlox.  (Jacob's Ladder). Polemoniaceae Family.","Pincushion Flower. (Scabiosa).","Pink Lady's Slipper. (Cypripedium Orchid).","Plume Celosia. (Cockscomb). Amaranthus Family.","Pointsettia. (Christmas Flower, Easter Flower).","Polyanthus. (Streptocarpus polyanthus).","Poppy Anemone. (Coronaria).","Portulaca grandiflora. (Moss Rose).","Pot Marigold. (Calendula officinalis).","Powder Puff. (Calliandra).","Primula. (Primula vulgaris). True Primrose.","Purple Coneflower. (Echinacea).","Quaker Ladies. (Houstonia).","Queen Anne's Lace. (Wild Carrot).","Queen's Cup. (Clintonia).","Queen of the Meadow. (Filipendula).","Quince. (Flowering).","Rain Lily. (Zephyranthes). Amaryllis Family.","Ranunculus. (Persian Buttercup).","Rock Rose. (Cistus incanus).","Rondeletia. (Bedstraw Plant). Rubiaceae Family.","Rose. (Rosaceae Family).","Rose of Sharon. (Hibiscus syriacus).","Rudbeckia. (Black-Eyed Susan).","Salvia splendens. (Sage).","Saponaria. (Soapwort).","Scabiosa. (Pincushion Flower).","Scaevola. (Fan Flower).","Scented Geranium.  (Pelargonium).","Scilla. (Hyacinth Family).","Sedum. (Stonecrops). Crassulaceae Family.","Shasta Daisy. (Leucanthemum).","Silene. (Carnation Family).","Snapdragon. (Antirrhinum).","Snowdrop. (Galanthus).","Snowflake. (Leucojum).","Solidago. (Goldenrod).","Speedwell. (Veronica).","Statice. (Sea Lavender). Limonium.","Sun Drop. (Oenothera).","Sunflower. (Helianthus).","Sweet Pea. (Lathorys odorata).","Syringa. (Forsythia).","Tagetes(Marigold).","Tea Rose. (Gloire de Dijon).","Thunbergia. (Black-Eyed Susan).","tiger Flower. (Tigridia).","Tiger Lily. (Lilium tigrinum).","Tithonia. (Mexican Sunflower).","Trachelium. (Campanula).","Trillium.  (Melanthiaceae).","Triteleia. Triplet Lily. (Often confused with Ipheon Flower).","Tritonia crocata. (Flame Freesia).","Trollius. (Globeflower). Ranunculus Family.","Tropaeolum. (Nasturtium).","Trumpet Vine. Hummingbird Vine.  (Campsis radicans).","Tuberose.  Fever Root, Snapdragon Root. (Ruellia tuberosa).","Tulip.  Tulipa. (Lily Family).","Urn Plant. (Aechmea).","Ursinia. (Daisy Family).","Uva Ursi. Arctostaphylos uva-ursi. (Bear Berry).","Verbena. (Vervain).","Veronica incana. (Silver Speedwell).","Viburnum. (Adoxaceae Family).","Vinca Minor. (Periwinkle).","Viola wittrockiana. (Pansy). Violaceae Family.","Viola tri-colour.  Heartsease, Johnny Jump Up.","Viola. (Double, Cultivar).","Violet. (Violaceae Family).","Virginia Creeper. (Vitaceae family).","Wallflower. (Erysimum).","Wandflower. (Spraxis).","Waterlily. (Nymphaea).","Watsonia. (Bugle Lily). Iris Family.","Wax Plant. (Hoya carnosa).","Wedelia. (Sunflower Family).","Weigela. (Caprifoliaceae Family).","Whirling Butterflies. (Gaura).","Wild Rose. (Rosaceae Family).","Wild Violet. (Viola sororia).","Windflower. (Anemone).","Winter Aconite. (Eranthus).","Winterberry. (Ilex verticillata).","Winter Jasmine.  (Jasminum nudiflorum).","Wishbone Flower. (Torenia fournieri).","Wisteria.  A member of the Pea Family (Fabaceae).","Woolly Violet. (Viola sororia).","Xanthoceras sorbifolium. (Yellowhorn).","Xeranthemum. (Helichrysum bracteatum). Strawflower.","Xerophyllum. (Bear Grass. Indian Basket Grass).","Xylobium. (Orchid).","Xylosma.  (Salicaceae Family).","Xyris difformis. (Bog Yellow-Eyed Grass).","Yarrow. (Achillea).","Yellow Archangel. (Aluminium Plant).","Yellow Bell. (Golden Trumpet).","Yellow-Eyed Grass.  (Sisyrinchium californicum).","Zenobia. (Honeycup).","Zephyranthes. (Rain Lily).","Zinnia elegans. (Aster Family)."]
    //var fimage = [#imageLiteral(resourceName: "African Daisy. (Gazania)"),#imageLiteral(resourceName: "Baby's Breath. (Gypsophila)"),#imageLiteral(resourceName: "Bachelor's Button(Cornflower)")]
    
    
    @IBOutlet weak var tableviews: UITableView!
    

    
   

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // countrySearch.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
       
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            
                return flowerNameArr.count
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
        
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath) as? CellTableViewCell
        
        cell?.lb1.text = flowerNameArr[indexPath.row]
       cell?.img.image = UIImage(named: flowerNameArr[indexPath.row])
         return cell!
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc =  storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.imageflow = UIImage(named: flowerNameArr[indexPath.row])!
        vc?.nameflow = flowerNameArr[indexPath.row]
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
    }
    
}
