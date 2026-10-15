###### Class com.google.android.gms.internal.ads.zzgnh (com.google.android.gms.internal.ads.zzgnh)
.class final Lcom/google/android/gms/internal/ads/zzgnh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnm;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgnv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgnv;Lcom/google/android/gms/internal/ads/zzgng;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnh;->a:Lcom/google/android/gms/internal/ads/zzgnv;

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "GmsCore_OpenSSL"

    const-string v1, "AndroidOpenSSL"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnn;->b([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    :try_start_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgnh;->a:Lcom/google/android/gms/internal/ads/zzgnv;

    .line 3
    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_23

    return-object p1

    :catch_23
    nop

    goto :goto_10

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnh;->a:Lcom/google/android/gms/internal/ads/zzgnv;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
