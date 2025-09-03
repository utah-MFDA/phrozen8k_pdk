#include <Xyce_config.h>
#include <N_DEV_ADMSserpentine_300px_0.h>
#include <N_DEV_ADMSdiffmix_25px_0.h>
#include <N_DEV_ADMSp_serpentine_0.h>
#include <N_DEV_ADMSp_serpentine_1.h>
#include <N_DEV_ADMSp_serpentine_2.h>
#include <N_DEV_ADMSp_serpentine_3.h>

struct Bootstrap 
{
  Bootstrap()
  {
    Xyce::Device::ADMSserpentine_300px_0::registerDevice();
     Xyce::Device::ADMSdiffmix_25px_0::registerDevice();
     Xyce::Device::ADMSp_serpentine_0::registerDevice();
     Xyce::Device::ADMSp_serpentine_1::registerDevice();
     Xyce::Device::ADMSp_serpentine_2::registerDevice();
     Xyce::Device::ADMSp_serpentine_3::registerDevice();

  }
};
Bootstrap s_bootstrap;
