###### Class com.google.android.gms.internal.ads.zzfgn (com.google.android.gms.internal.ads.zzfgn)
.class final Lcom/google/android/gms/internal/ads/zzfgn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Landroid/webkit/WebView;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzfgo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfgo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgn;->p:Lcom/google/android/gms/internal/ads/zzfgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfgo;->l(Lcom/google/android/gms/internal/ads/zzfgo;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgn;->o:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgn;->o:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
