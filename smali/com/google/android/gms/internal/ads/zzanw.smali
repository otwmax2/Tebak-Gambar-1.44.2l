###### Class com.google.android.gms.internal.ads.zzanw (com.google.android.gms.internal.ads.zzanw)
.class public final Lcom/google/android/gms/internal/ads/zzanw;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzanw;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgpe;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanw;->zzb:Lcom/google/android/gms/internal/ads/zzanw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzanw;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zze:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzg:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzh:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzanv;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzanw;->zzb:Lcom/google/android/gms/internal/ads/zzanw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzanv;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzanw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzanw;->zzb:Lcom/google/android/gms/internal/ads/zzanw;

    return-object v0
.end method

.method public static K([BLcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzanw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzanw;->zzb:Lcom/google/android/gms/internal/ads/zzanw;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->p(Lcom/google/android/gms/internal/ads/zzgqm;[BLcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzanw;

    return-object p0
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/zzanw;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->zze:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/zzanw;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method static synthetic R(Lcom/google/android/gms/internal/ads/zzanw;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzg:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method static synthetic S(Lcom/google/android/gms/internal/ads/zzanw;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzh:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_42

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_22

    if-eq p1, v1, :cond_1c

    const/4 p2, 0x0

    if-eq p1, v0, :cond_16

    if-eq p1, p3, :cond_13

    return-object p2

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzanw;->zzb:Lcom/google/android/gms/internal/ads/zzanw;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanv;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanv;-><init>(Lcom/google/android/gms/internal/ads/zzamu;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanw;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzanw;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzd"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzanw;->zzb:Lcom/google/android/gms/internal/ads/zzanw;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002\u0004\u100a\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_42
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final L()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zze:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method

.method public final M()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method

.method public final N()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzh:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method

.method public final O()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->zzg:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method
