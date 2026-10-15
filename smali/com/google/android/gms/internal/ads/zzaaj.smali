###### Class com.google.android.gms.internal.ads.zzaaj (com.google.android.gms.internal.ads.zzaaj)
.class public final Lcom/google/android/gms/internal/ads/zzaaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaaj;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->b:I

    return-void
.end method

.method private final c(Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaaj;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    .line 3
    :try_start_d
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_26

    if-lez p1, :cond_2b

    :cond_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->a:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->b:I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2a} :catch_2b

    return v0

    :catch_2b
    :cond_2b
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->b:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzbq;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbq;->h()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbq;->t(I)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzadi;

    const-string v4, "iTunSMPB"

    const/4 v5, 0x1

    if-eqz v3, :cond_27

    .line 4
    check-cast v2, Lcom/google/android/gms/internal/ads/zzadi;

    .line 5
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzadi;->q:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzadi;->r:Ljava/lang/String;

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzaaj;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_48

    :cond_26
    return v5

    .line 7
    :cond_27
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzadr;

    if-eqz v3, :cond_48

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/zzadr;

    .line 9
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzadr;->p:Ljava/lang/String;

    const-string v6, "com.apple.iTunes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzadr;->q:Ljava/lang/String;

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzadr;->r:Ljava/lang/String;

    .line 11
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzaaj;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    return v5

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4b
    return v0
.end method
