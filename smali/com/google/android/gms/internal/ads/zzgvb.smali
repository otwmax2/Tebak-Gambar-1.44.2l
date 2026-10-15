###### Class com.google.android.gms.internal.ads.zzgvb (com.google.android.gms.internal.ads.zzgvb)
.class public final Lcom/google/android/gms/internal/ads/zzgvb;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgvb;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgva;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgqv;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzi:I

.field private zzj:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgvb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvb;->zzb:Lcom/google/android/gms/internal/ads/zzgvb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgvb;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzgvb;->zzj:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->u()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvb;->zzf:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvb;->zzg:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvb;->zzh:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzguy;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvb;->zzb:Lcom/google/android/gms/internal/ads/zzgvb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzguy;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzgvb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvb;->zzb:Lcom/google/android/gms/internal/ads/zzgvb;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/zzgvb;Lcom/google/android/gms/internal/ads/zzgux;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvb;->zzf:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgqv;->a()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->v(Lcom/google/android/gms/internal/ads/zzgqv;)Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvb;->zzf:Lcom/google/android/gms/internal/ads/zzgqv;

    :cond_11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgvb;->zzf:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_51

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_28

    if-eq p1, v3, :cond_22

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1c

    if-eq p1, v1, :cond_19

    if-nez p2, :cond_16

    const/4 p3, 0x0

    .line 1
    :cond_16
    iput-byte p3, p0, Lcom/google/android/gms/internal/ads/zzgvb;->zzj:B

    return-object v3

    .line 2
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvb;->zzb:Lcom/google/android/gms/internal/ads/zzgvb;

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzguy;

    .line 3
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzguy;-><init>(Lcom/google/android/gms/internal/ads/zzgub;)V

    return-object p1

    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvb;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgvb;-><init>()V

    return-object p1

    :cond_28
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const-string p2, "zze"

    aput-object p2, p1, p3

    const-string p2, "zzf"

    aput-object p2, p1, v4

    .line 5
    const-class p2, Lcom/google/android/gms/internal/ads/zzgux;

    aput-object p2, p1, v3

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgvb;->zzb:Lcom/google/android/gms/internal/ads/zzgvb;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_51
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgvb;->zzj:B

    .line 6
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
