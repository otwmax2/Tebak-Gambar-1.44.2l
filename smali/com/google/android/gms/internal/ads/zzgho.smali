###### Class com.google.android.gms.internal.ads.zzgho (com.google.android.gms.internal.ads.zzgho)
.class public final Lcom/google/android/gms/internal/ads/zzgho;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgho;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/ads/zzghr;

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgho;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgho;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgho;->zzb:Lcom/google/android/gms/internal/ads/zzgho;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgho;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    return-void
.end method

.method public static J()Lcom/google/android/gms/internal/ads/zzghn;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgho;->zzb:Lcom/google/android/gms/internal/ads/zzgho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzghn;

    return-object v0
.end method

.method static synthetic K()Lcom/google/android/gms/internal/ads/zzgho;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgho;->zzb:Lcom/google/android/gms/internal/ads/zzgho;

    return-object v0
.end method

.method public static L()Lcom/google/android/gms/internal/ads/zzgho;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgho;->zzb:Lcom/google/android/gms/internal/ads/zzgho;

    return-object v0
.end method

.method public static M(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgho;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgho;->zzb:Lcom/google/android/gms/internal/ads/zzgho;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->n(Lcom/google/android/gms/internal/ads/zzgqm;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgho;

    return-object p0
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/zzgho;Lcom/google/android/gms/internal/ads/zzghr;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgho;->zzd:Lcom/google/android/gms/internal/ads/zzghr;

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/zzgho;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgho;->zze:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_36

    const/4 p3, 0x2

    if-eq p1, p3, :cond_22

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1c

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_16

    const/4 p2, 0x5

    if-eq p1, p2, :cond_13

    return-object p3

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgho;->zzb:Lcom/google/android/gms/internal/ads/zzgho;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzghn;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzghn;-><init>(Lcom/google/android/gms/internal/ads/zzghm;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgho;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgho;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzd"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgho;->zzb:Lcom/google/android/gms/internal/ads/zzgho;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_36
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final I()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgho;->zze:I

    return v0
.end method

.method public final N()Lcom/google/android/gms/internal/ads/zzghr;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgho;->zzd:Lcom/google/android/gms/internal/ads/zzghr;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghr;->L()Lcom/google/android/gms/internal/ads/zzghr;

    move-result-object v0

    :cond_8
    return-object v0
.end method
