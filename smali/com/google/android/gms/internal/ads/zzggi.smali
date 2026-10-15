###### Class com.google.android.gms.internal.ads.zzggi (com.google.android.gms.internal.ads.zzggi)
.class public final Lcom/google/android/gms/internal/ads/zzggi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgfk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgfk;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgas;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggi;->a:Lcom/google/android/gms/internal/ads/zzgfk;

    return-void

    :cond_d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
