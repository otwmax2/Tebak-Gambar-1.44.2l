###### Class com.google.android.gms.internal.ads.zzgjp (com.google.android.gms.internal.ads.zzgjp)
.class public final Lcom/google/android/gms/internal/ads/zzgjp;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgjp;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgjj;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgpe;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjp;->zzb:Lcom/google/android/gms/internal/ads/zzgjp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgjp;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zzg:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method public static K()Lcom/google/android/gms/internal/ads/zzgjo;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjp;->zzb:Lcom/google/android/gms/internal/ads/zzgjp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgjo;

    return-object v0
.end method

.method static synthetic L()Lcom/google/android/gms/internal/ads/zzgjp;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjp;->zzb:Lcom/google/android/gms/internal/ads/zzgjp;

    return-object v0
.end method

.method public static M()Lcom/google/android/gms/internal/ads/zzgjp;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjp;->zzb:Lcom/google/android/gms/internal/ads/zzgjp;

    return-object v0
.end method

.method public static N(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgjp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjp;->zzb:Lcom/google/android/gms/internal/ads/zzgjp;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->n(Lcom/google/android/gms/internal/ads/zzgqm;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgjp;

    return-object p0
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/zzgjp;I)V
    .registers 2

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zzd:I

    return-void
.end method

.method static synthetic R(Lcom/google/android/gms/internal/ads/zzgjp;Lcom/google/android/gms/internal/ads/zzgjj;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zze:Lcom/google/android/gms/internal/ads/zzgjj;

    return-void
.end method

.method static synthetic S(Lcom/google/android/gms/internal/ads/zzgjp;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method static synthetic T(Lcom/google/android/gms/internal/ads/zzgjp;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zzg:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgjp;->zzb:Lcom/google/android/gms/internal/ads/zzgjp;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgjo;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgjo;-><init>(Lcom/google/android/gms/internal/ads/zzgjn;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgjp;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgjp;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgjp;->zzb:Lcom/google/android/gms/internal/ads/zzgjp;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3e
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final I()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zzd:I

    return v0
.end method

.method public final J()Lcom/google/android/gms/internal/ads/zzgjj;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zze:Lcom/google/android/gms/internal/ads/zzgjj;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjj;->L()Lcom/google/android/gms/internal/ads/zzgjj;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final O()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method

.method public final P()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjp;->zzg:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method
