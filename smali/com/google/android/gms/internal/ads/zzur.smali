###### Class com.google.android.gms.internal.ads.zzur (com.google.android.gms.internal.ads.zzur)
.class public final Lcom/google/android/gms/internal/ads/zzur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/zzur;

.field private static final e:Ljava/lang/String;

.field public static final f:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:I

.field private final b:Lcom/google/android/gms/internal/ads/zzfqk;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzur;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzcp;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzur;-><init>([Lcom/google/android/gms/internal/ads/zzcp;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzur;->d:Lcom/google/android/gms/internal/ads/zzur;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzur;->e:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzuq;->a:Lcom/google/android/gms/internal/ads/zzuq;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzur;->f:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzcp;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqk;->t([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 2
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzur;->a:I

    const/4 p1, 0x0

    :goto_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p1, v0, :cond_47

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 4
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 5
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzcp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Multiple identical TrackGroups added to one TrackGroupArray."

    .line 6
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v3, "TrackGroupArray"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_45
    move p1, v0

    goto :goto_d

    :cond_47
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzcp;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqk;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_9

    return p1

    :cond_9
    const/4 p1, -0x1

    return p1
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/zzcp;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcp;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_23

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzur;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzur;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzur;->a:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 2
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfqk;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzur;->c:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzur;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqk;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzur;->c:I

    :cond_c
    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzuq (com.google.android.gms.internal.ads.zzuq)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzuq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzuq;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzuq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzuq;->a:Lcom/google/android/gms/internal/ads/zzuq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
