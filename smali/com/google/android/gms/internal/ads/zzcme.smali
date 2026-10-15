###### Class com.google.android.gms.internal.ads.zzcme (com.google.android.gms.internal.ads.zzcme)
.class public final Lcom/google/android/gms/internal/ads/zzcme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcls;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeyb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcme;->a:Lcom/google/android/gms/internal/ads/zzeyb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .registers 3

    const-string v0, "render_in_browser"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcme;->a:Lcom/google/android/gms/internal/ads/zzeyb;

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeyb;->b(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    return-void

    :catch_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid render_in_browser state"

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    return-void
.end method
