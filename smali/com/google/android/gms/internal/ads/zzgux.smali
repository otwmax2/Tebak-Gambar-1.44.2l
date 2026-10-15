###### Class com.google.android.gms.internal.ads.zzgux (com.google.android.gms.internal.ads.zzgux)
.class public final Lcom/google/android/gms/internal/ads/zzgux;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgux;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzg:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgux;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgux;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgux;->zzb:Lcom/google/android/gms/internal/ads/zzgux;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgux;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzgux;->zzg:B

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgux;->zze:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgux;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzguw;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgux;->zzb:Lcom/google/android/gms/internal/ads/zzgux;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzguw;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzgux;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgux;->zzb:Lcom/google/android/gms/internal/ads/zzgux;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/zzgux;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgux;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgux;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgux;->zze:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/zzgux;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgux;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgux;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgux;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_3f

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_28

    if-eq p1, v1, :cond_22

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1c

    const/4 v1, 0x5

    if-eq p1, v1, :cond_19

    if-nez p2, :cond_16

    const/4 p3, 0x0

    .line 1
    :cond_16
    iput-byte p3, p0, Lcom/google/android/gms/internal/ads/zzgux;->zzg:B

    return-object v2

    .line 2
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgux;->zzb:Lcom/google/android/gms/internal/ads/zzgux;

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzguw;

    .line 3
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzguw;-><init>(Lcom/google/android/gms/internal/ads/zzgub;)V

    return-object p1

    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgux;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgux;-><init>()V

    return-object p1

    :cond_28
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const-string p2, "zze"

    aput-object p2, p1, p3

    const-string p2, "zzf"

    aput-object p2, p1, v2

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgux;->zzb:Lcom/google/android/gms/internal/ads/zzgux;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u150a\u0000\u0002\u100a\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3f
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgux;->zzg:B

    .line 6
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
