###### Class com.google.android.gms.internal.ads.zzgbs (com.google.android.gms.internal.ads.zzgbs)
.class final Lcom/google/android/gms/internal/ads/zzgbs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvw;


# static fields
.field private static final e:[B


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgkt;

.field private final b:Lcom/google/android/gms/internal/ads/zzgbt;

.field private final c:Lcom/google/android/gms/internal/ads/zzgbp;

.field private final d:Lcom/google/android/gms/internal/ads/zzgbo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbs;->e:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgkt;Lcom/google/android/gms/internal/ads/zzgbt;Lcom/google/android/gms/internal/ads/zzgbo;Lcom/google/android/gms/internal/ads/zzgbp;[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbs;->a:Lcom/google/android/gms/internal/ads/zzgkt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbs;->b:Lcom/google/android/gms/internal/ads/zzgbt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgbs;->d:Lcom/google/android/gms/internal/ads/zzgbo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgbs;->c:Lcom/google/android/gms/internal/ads/zzgbp;

    return-void
.end method

.method static b(Lcom/google/android/gms/internal/ads/zzgkt;)Lcom/google/android/gms/internal/ads/zzgbs;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkt;->O()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->j()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkt;->J()Lcom/google/android/gms/internal/ads/zzgkn;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbw;->b(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgbt;

    move-result-object v3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbw;->c(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgbo;

    move-result-object v4

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbw;->a(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgbp;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbs;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgbs;-><init>(Lcom/google/android/gms/internal/ads/zzgkt;Lcom/google/android/gms/internal/ads/zzgbt;Lcom/google/android/gms/internal/ads/zzgbo;Lcom/google/android/gms/internal/ads/zzgbp;[B)V

    return-object v0

    .line 6
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HpkePublicKey.public_key is empty."

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([B[B)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_5

    new-array p2, v0, [B

    :cond_5
    move-object v6, p2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbs;->a:Lcom/google/android/gms/internal/ads/zzgkt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgbs;->b:Lcom/google/android/gms/internal/ads/zzgbt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgbs;->d:Lcom/google/android/gms/internal/ads/zzgbo;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgbs;->c:Lcom/google/android/gms/internal/ads/zzgbp;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgkt;->O()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzgbt;->a([B)Lcom/google/android/gms/internal/ads/zzgbu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgbu;->a()[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgbu;->b()[B

    move-result-object v2

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgbq;->c([B[BLcom/google/android/gms/internal/ads/zzgbt;Lcom/google/android/gms/internal/ads/zzgbo;Lcom/google/android/gms/internal/ads/zzgbp;[B)Lcom/google/android/gms/internal/ads/zzgbq;

    move-result-object p2

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgbs;->e:[B

    .line 3
    invoke-virtual {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzgbq;->b([B[B)[B

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [[B

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgbq;->a()[B

    move-result-object p2

    aput-object p2, v2, v0

    aput-object p1, v2, v1

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p1

    return-object p1
.end method
