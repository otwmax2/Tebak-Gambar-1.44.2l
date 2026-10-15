###### Class com.google.android.gms.internal.ads.zzva (com.google.android.gms.internal.ads.zzva)
.class public Lcom/google/android/gms/internal/ads/zzva;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwe;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/zzcp;

.field protected final b:I

.field protected final c:[I

.field private final d:[Lcom/google/android/gms/internal/ads/zzaf;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcp;[II)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p3, p2

    const/4 v0, 0x0

    if-lez p3, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzva;->a:Lcom/google/android/gms/internal/ads/zzcp;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzva;->b:I

    new-array p3, p3, [Lcom/google/android/gms/internal/ads/zzaf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzva;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    const/4 p3, 0x0

    .line 4
    :goto_19
    array-length v1, p2

    if-ge p3, v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzva;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    .line 5
    aget v2, p2, p3

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzcp;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v2

    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    :cond_29
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzva;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzuz;->o:Lcom/google/android/gms/internal/ads/zzuz;

    .line 6
    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzva;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzva;->c:[I

    :goto_36
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzva;->b:I

    if-ge v0, p2, :cond_49

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzva;->c:[I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzva;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    .line 7
    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzcp;->a(Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result p3

    aput p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_49
    return-void
.end method


# virtual methods
.method public final K(I)Lcom/google/android/gms/internal/ads/zzaf;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzva;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzva;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzcp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzva;->a:Lcom/google/android/gms/internal/ads/zzcp;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzva;->a:Lcom/google/android/gms/internal/ads/zzcp;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzva;->a:Lcom/google/android/gms/internal/ads/zzcp;

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzva;->c:[I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzva;->c:[I

    .line 2
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public final h(I)I
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzva;->c:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzva;->e:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzva;->a:Lcom/google/android/gms/internal/ads/zzcp;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzva;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzva;->e:I

    :cond_15
    return v0
.end method

.method public final z(I)I
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzva;->b:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzva;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzuz (com.google.android.gms.internal.ads.zzuz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzuz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzuz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzuz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzuz;->o:Lcom/google/android/gms/internal/ads/zzuz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaf;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaf;

    .line 1
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    sub-int/2addr p2, p1

    return p2
.end method
