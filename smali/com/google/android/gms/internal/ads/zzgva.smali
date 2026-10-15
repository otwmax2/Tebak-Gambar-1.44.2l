###### Class com.google.android.gms.internal.ads.zzgva (com.google.android.gms.internal.ads.zzgva)
.class public final Lcom/google/android/gms/internal/ads/zzgva;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgva;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgpe;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgva;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgva;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgva;->zzb:Lcom/google/android/gms/internal/ads/zzgva;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgva;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgva;->zze:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgva;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgva;->zzg:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method static synthetic I()Lcom/google/android/gms/internal/ads/zzgva;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgva;->zzb:Lcom/google/android/gms/internal/ads/zzgva;

    return-object v0
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_3e

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_22

    if-eq p1, v0, :cond_1c

    const/4 p2, 0x0

    if-eq p1, p3, :cond_16

    const/4 p3, 0x5

    if-eq p1, p3, :cond_13

    return-object p2

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgva;->zzb:Lcom/google/android/gms/internal/ads/zzgva;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzguz;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzguz;-><init>(Lcom/google/android/gms/internal/ads/zzgub;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgva;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgva;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzd"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgva;->zzb:Lcom/google/android/gms/internal/ads/zzgva;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3e
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
