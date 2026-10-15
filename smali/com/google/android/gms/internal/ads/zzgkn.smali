###### Class com.google.android.gms.internal.ads.zzgkn (com.google.android.gms.internal.ads.zzgkn)
.class public final Lcom/google/android/gms/internal/ads/zzgkn;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgkn;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgkn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgkn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzgkm;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgkm;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzgkn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    return-object v0
.end method

.method public static K()Lcom/google/android/gms/internal/ads/zzgkn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    return-object v0
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/zzgkn;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zzd:I

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/zzgkn;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zze:I

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/zzgkn;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zzf:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_3a

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    if-eq p1, p3, :cond_1c

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_16

    const/4 p2, 0x5

    if-eq p1, p2, :cond_13

    return-object p3

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgkm;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgkm;-><init>(Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgkn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgkn;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzd"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3a
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final L()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zzf:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    if-eq v0, v3, :cond_14

    if-eq v0, v2, :cond_11

    if-eq v0, v1, :cond_f

    const/4 v1, 0x0

    goto :goto_14

    :cond_f
    const/4 v1, 0x5

    goto :goto_14

    :cond_11
    const/4 v1, 0x4

    goto :goto_14

    :cond_13
    const/4 v1, 0x2

    :cond_14
    :goto_14
    if-nez v1, :cond_17

    return v3

    :cond_17
    return v1
.end method

.method public final M()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zze:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    if-eq v0, v3, :cond_14

    if-eq v0, v2, :cond_11

    if-eq v0, v1, :cond_f

    const/4 v1, 0x0

    goto :goto_14

    :cond_f
    const/4 v1, 0x5

    goto :goto_14

    :cond_11
    const/4 v1, 0x4

    goto :goto_14

    :cond_13
    const/4 v1, 0x2

    :cond_14
    :goto_14
    if-nez v1, :cond_17

    return v3

    :cond_17
    return v1
.end method

.method public final N()I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zzd:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_18

    if-eq v0, v4, :cond_16

    if-eq v0, v3, :cond_19

    if-eq v0, v2, :cond_14

    if-eq v0, v1, :cond_12

    const/4 v1, 0x0

    goto :goto_19

    :cond_12
    const/4 v1, 0x6

    goto :goto_19

    :cond_14
    const/4 v1, 0x5

    goto :goto_19

    :cond_16
    const/4 v1, 0x3

    goto :goto_19

    :cond_18
    const/4 v1, 0x2

    :cond_19
    :goto_19
    if-nez v1, :cond_1c

    return v4

    :cond_1c
    return v1
.end method
