###### Class com.google.android.gms.internal.ads.zzfxi (com.google.android.gms.internal.ads.zzfxi)
.class public final Lcom/google/android/gms/internal/ads/zzfxi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lcom/google/android/gms/internal/ads/zzgmh;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/internal/ads/zzgmh;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/internal/ads/zzgmh;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxq;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyr;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyr;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzi;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzi;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfya;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfya;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzy;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzy;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgac;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgac;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzv;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzv;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgaf;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgaf;-><init>()V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->J()Lcom/google/android/gms/internal/ads/zzgmh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->c:Lcom/google/android/gms/internal/ads/zzgmh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->d:Lcom/google/android/gms/internal/ads/zzgmh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->e:Lcom/google/android/gms/internal/ads/zzgmh;

    .line 10
    :try_start_3a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxi;->a()V
    :try_end_3d
    .catch Ljava/security/GeneralSecurityException; {:try_start_3a .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 12
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->c()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgga;->a()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxq;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxq;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyr;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyr;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzb;->a()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgat;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    :cond_21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfya;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfya;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyk;->a()V

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzi;->k(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzv;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzv;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzy;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzy;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgac;

    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgac;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgaf;

    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgaf;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    return-void
.end method
