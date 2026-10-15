package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzep;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbza;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class NativeAdView extends FrameLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotOnlyInitialized
    private final FrameLayout f6343o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NotOnlyInitialized
    private final zzbeb f6344p;

    public NativeAdView(Context context) {
        super(context);
        this.f6343o = e(context);
        this.f6344p = f();
    }

    private final FrameLayout e(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    @RequiresNonNull({"overlayFrame"})
    private final zzbeb f() {
        if (isInEditMode()) {
            return null;
        }
        return zzay.a().h(this.f6343o.getContext(), this, this.f6343o);
    }

    private final void g(String str, View view) {
        zzbeb zzbebVar = this.f6344p;
        if (zzbebVar != null) {
            try {
                zzbebVar.n5(str, ObjectWrapper.Q4(view));
            } catch (RemoteException e10) {
                zzbza.e("Unable to call setAssetView on delegate", e10);
            }
        }
    }

    public void a() {
        zzbeb zzbebVar = this.f6344p;
        if (zzbebVar != null) {
            try {
                zzbebVar.a();
            } catch (RemoteException e10) {
                zzbza.e("Unable to destroy native ad view", e10);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        super.bringChildToFront(this.f6343o);
    }

    protected final View b(String str) {
        zzbeb zzbebVar = this.f6344p;
        if (zzbebVar != null) {
            try {
                IObjectWrapper iObjectWrapperU = zzbebVar.u(str);
                if (iObjectWrapperU != null) {
                    return (View) ObjectWrapper.t1(iObjectWrapperU);
                }
            } catch (RemoteException e10) {
                zzbza.e("Unable to call getAssetView on delegate", e10);
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f6343o;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    final /* synthetic */ void c(MediaContent mediaContent) {
        zzbeb zzbebVar = this.f6344p;
        if (zzbebVar == null) {
            return;
        }
        try {
            if (mediaContent instanceof zzep) {
                zzbebVar.L6(((zzep) mediaContent).a());
            } else if (mediaContent == null) {
                zzbebVar.L6(null);
            } else {
                zzbza.b("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e10) {
            zzbza.e("Unable to call setMediaContent on delegate", e10);
        }
    }

    final /* synthetic */ void d(ImageView.ScaleType scaleType) {
        zzbeb zzbebVar = this.f6344p;
        if (zzbebVar == null || scaleType == null) {
            return;
        }
        try {
            zzbebVar.Oa(ObjectWrapper.Q4(scaleType));
        } catch (RemoteException e10) {
            zzbza.e("Unable to call setMediaViewImageScaleType on delegate", e10);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f6344p != null) {
            if (((Boolean) zzba.c().b(zzbar.F9)).booleanValue()) {
                try {
                    this.f6344p.x0(ObjectWrapper.Q4(motionEvent));
                } catch (RemoteException e10) {
                    zzbza.e("Unable to call handleTouchEvent on delegate", e10);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public AdChoicesView getAdChoicesView() {
        View viewB = b("3011");
        if (viewB instanceof AdChoicesView) {
            return (AdChoicesView) viewB;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return b("3005");
    }

    public final View getBodyView() {
        return b("3004");
    }

    public final View getCallToActionView() {
        return b("3002");
    }

    public final View getHeadlineView() {
        return b("3001");
    }

    public final View getIconView() {
        return b("3003");
    }

    public final View getImageView() {
        return b("3008");
    }

    public final MediaView getMediaView() {
        View viewB = b("3010");
        if (viewB instanceof MediaView) {
            return (MediaView) viewB;
        }
        if (viewB == null) {
            return null;
        }
        zzbza.b("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return b("3007");
    }

    public final View getStarRatingView() {
        return b("3009");
    }

    public final View getStoreView() {
        return b("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        zzbeb zzbebVar = this.f6344p;
        if (zzbebVar != null) {
            try {
                zzbebVar.n4(ObjectWrapper.Q4(view), i10);
            } catch (RemoteException e10) {
                zzbza.e("Unable to call onVisibilityChanged on delegate", e10);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f6343o);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f6343o == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        g("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        g("3005", view);
    }

    public final void setBodyView(View view) {
        g("3004", view);
    }

    public final void setCallToActionView(View view) {
        g("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        zzbeb zzbebVar = this.f6344p;
        if (zzbebVar != null) {
            try {
                zzbebVar.L3(ObjectWrapper.Q4(view));
            } catch (RemoteException e10) {
                zzbza.e("Unable to call setClickConfirmingView on delegate", e10);
            }
        }
    }

    public final void setHeadlineView(View view) {
        g("3001", view);
    }

    public final void setIconView(View view) {
        g("3003", view);
    }

    public final void setImageView(View view) {
        g("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        g("3010", mediaView);
        if (mediaView == null) {
            return;
        }
        mediaView.a(new zzb(this));
        mediaView.b(new zzc(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.dynamic.IObjectWrapper, java.lang.Object] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void setNativeAd(NativeAd nativeAd) {
        zzbeb zzbebVar = this.f6344p;
        if (zzbebVar != 0) {
            try {
                zzbebVar.j7(nativeAd.e());
            } catch (RemoteException e10) {
                zzbza.e("Unable to call setNativeAd on delegate", e10);
            }
        }
    }

    public final void setPriceView(View view) {
        g("3007", view);
    }

    public final void setStarRatingView(View view) {
        g("3009", view);
    }

    public final void setStoreView(View view) {
        g("3006", view);
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6343o = e(context);
        this.f6344p = f();
    }
}
