import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoApp());
}

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Trading App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFF1A1A1A),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey[800],
                    child: const Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey[400]),
                          const SizedBox(width: 8),
                          Text(
                            '搜索',
                            style: TextStyle(color: Colors.grey[400], fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.headset, color: Colors.white, size: 28),
                  const SizedBox(width: 12),
                  Stack(
                    children: [
                      const Icon(Icons.notifications, color: Colors.white, size: 28),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 20,
                            minHeight: 20,
                          ),
                          child: const Text(
                            '99+',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              const SizedBox(height: 32),
              
              // Balance Section
              Row(
                children: [
                  const Text(
                    '總資產 (USDT)',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.visibility, color: Colors.grey, size: 16),
                ],
              ),
              
              const SizedBox(height: 8),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '1,209.17',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '≈\$1,209.17',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF9AFF00),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      '充值',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 32),
              
              // Function Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildFunctionIcon(Icons.account_balance_wallet, '買幣', hasNew: true),
                  _buildFunctionIcon(Icons.local_offer, 'Token Splash'),
                  _buildFunctionIcon(Icons.emoji_events, '活動中心'),
                  _buildFunctionIcon(Icons.task_alt, '任務中心'),
                  _buildFunctionIcon(Icons.apps, '更多'),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Cards Section
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'TOKEN SPLASH',
                            style: TextStyle(
                              color: Color(0xFF9AFF00),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '入金 & 交易',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '贏取 50,000 WLFI!',
                            style: TextStyle(
                              color: Color(0xFF9AFF00),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF9AFF00),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'GO >',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '權利中心',
                                style: TextStyle(
                                  color: Color(0xFF9AFF00),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '新人任務',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                '超多福利',
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                              const Text(
                                '等你來領',
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Bitunix 學院',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      '輕鬆玩轉加密交易',
                                      style: TextStyle(color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Trading Section
              Row(
                children: [
                  const Text(
                    '熱門合約',
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 24),
                  const Text(
                    '熱門現貨',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(width: 24),
                  const Text(
                    '漲幅榜',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
              
              const SizedBox(height: 16),
              
              Row(
                children: [
                  const Text(
                    '交易對 / 成交額',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const Spacer(),
                  const Text(
                    '最新價',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(width: 40),
                  const Text(
                    '24h漲跌幅',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              
              const SizedBox(height: 16),
              
              // Crypto List
              _buildCryptoItem('ETHUSDT', 'ETH', '2.15B USDT', '4,401.99', '\$4,401.99', '+0.81%'),
              const SizedBox(height: 12),
              _buildCryptoItem('BTCUSDT', 'BTC', '1.19B USDT', '112,652.2', '\$112,652.20', '+1.83%'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1A1A1A),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首頁',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: '行情',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: '合約',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: '交易',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: '資產',
          ),
        ],
      ),
    );
  }

  Widget _buildFunctionIcon(IconData icon, String label, {bool hasNew = false}) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            if (hasNew)
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Color(0xFF9AFF00),
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    'NEW',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildCryptoItem(String pair, String symbol, String volume, String price, String usdPrice, String change) {
    bool isPositive = change.startsWith('+');
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey[800],
          child: Text(
            symbol == 'ETH' ? 'Ξ' : '₿',
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pair,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                volume,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              price,
              style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              usdPrice,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: isPositive ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            change,
            style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}