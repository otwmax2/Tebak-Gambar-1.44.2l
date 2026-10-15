###### Class com.google.android.gms.internal.ads.zzgbj (com.google.android.gms.internal.ads.zzgbj)
.class public final Lcom/google/android/gms/internal/ads/zzgbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfxc;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzgbj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgbj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbj;->a:Lcom/google/android/gms/internal/ads/zzgbj;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbj;->a:Lcom/google/android/gms/internal/ads/zzgbj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->p(Lcom/google/android/gms/internal/ads/zzfxc;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/zzfxb;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbi;-><init>(Lcom/google/android/gms/internal/ads/zzfxb;)V

    return-object v0
.end method

.method public final zza()Ljava/lang/Class;
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/ads/zzfvw;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/ads/zzfvw;

    return-object v0
.end method
