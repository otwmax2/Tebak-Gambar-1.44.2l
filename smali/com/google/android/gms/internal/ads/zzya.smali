###### Class com.google.android.gms.internal.ads.zzya (com.google.android.gms.internal.ads.zzya)
.class final Lcom/google/android/gms/internal/ads/zzya;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxz;


# instance fields
.field private final a:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/view/WindowManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzya;->a:Landroid/view/WindowManager;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzxz;
    .registers 2

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzya;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzya;-><init>(Landroid/view/WindowManager;)V

    return-object v0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzxx;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzya;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzxx;->a:Lcom/google/android/gms/internal/ads/zzyd;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzyd;->b(Lcom/google/android/gms/internal/ads/zzyd;Landroid/view/Display;)V

    return-void
.end method

.method public final zza()V
    .registers 1

    return-void
.end method
