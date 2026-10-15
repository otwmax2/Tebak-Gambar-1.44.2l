package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbrc;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class AdActivity extends Activity {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzbrc f5558o;

    private final void a() {
        zzbrc zzbrcVar = this.f5558o;
        if (zzbrcVar != null) {
            try {
                zzbrcVar.t();
            } catch (RemoteException e10) {
                zzbza.i("#007 Could not call remote method.", e10);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i10, int i11, Intent intent) {
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.m5(i10, i11, intent);
            }
        } catch (Exception e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                if (!zzbrcVar.H()) {
                    return;
                }
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
        super.onBackPressed();
        try {
            zzbrc zzbrcVar2 = this.f5558o;
            if (zzbrcVar2 != null) {
                zzbrcVar2.f();
            }
        } catch (RemoteException e11) {
            zzbza.i("#007 Could not call remote method.", e11);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.e0(ObjectWrapper.Q4(configuration));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        zzbrc zzbrcVarM = zzay.a().m(this);
        this.f5558o = zzbrcVarM;
        if (zzbrcVarM == null) {
            zzbza.i("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            zzbrcVarM.V7(bundle);
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.j();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.k();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.m();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.n();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.i0(bundle);
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.p();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.q();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    protected final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            zzbrc zzbrcVar = this.f5558o;
            if (zzbrcVar != null) {
                zzbrcVar.x();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i10) {
        super.setContentView(i10);
        a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        a();
    }
}
