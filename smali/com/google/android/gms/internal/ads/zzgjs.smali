###### Class com.google.android.gms.internal.ads.zzgjs (com.google.android.gms.internal.ads.zzgjs)
.class public final Lcom/google/android/gms/internal/ads/zzgjs;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgjs;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzgpe;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjs;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgjs;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzgjr;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgjr;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzgjs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjs;

    return-object v0
.end method

.method public static K()Lcom/google/android/gms/internal/ads/zzgjs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjs;

    return-object v0
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/zzgjs;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/zzgjs;I)V
    .registers 2

    const/4 p1, 0x4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgju;->a(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzd:I

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/zzgjs;I)V
    .registers 2

    const/4 p1, 0x5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgjw;->a(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zze:I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjs;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgjr;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgjr;-><init>(Lcom/google/android/gms/internal/ads/zzgjq;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgjs;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgjs;-><init>()V

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

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjs;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3a
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final L()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method

.method public final N()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzd:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v0, :cond_18

    if-eq v0, v3, :cond_16

    const/4 v3, 0x3

    if-eq v0, v3, :cond_19

    if-eq v0, v2, :cond_14

    if-eq v0, v1, :cond_12

    const/4 v1, 0x0

    goto :goto_19

    :cond_12
    const/4 v1, 0x7

    goto :goto_19

    :cond_14
    const/4 v1, 0x6

    goto :goto_19

    :cond_16
    const/4 v1, 0x4

    goto :goto_19

    :cond_18
    const/4 v1, 0x2

    :cond_19
    :goto_19
    if-nez v1, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    return v1
.end method

.method public final O()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgjw;->b(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method
