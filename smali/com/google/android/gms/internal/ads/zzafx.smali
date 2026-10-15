###### Class com.google.android.gms.internal.ads.zzafx (com.google.android.gms.internal.ads.zzafx)
.class public final Lcom/google/android/gms/internal/ads/zzafx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final E:Lcom/google/android/gms/internal/ads/zzaab;

.field private static final F:[B

.field private static final G:Lcom/google/android/gms/internal/ads/zzaf;


# instance fields
.field private A:Lcom/google/android/gms/internal/ads/zzzx;

.field private B:[Lcom/google/android/gms/internal/ads/zzabb;

.field private C:[Lcom/google/android/gms/internal/ads/zzabb;

.field private D:Z

.field private final a:Ljava/util/List;

.field private final b:Landroid/util/SparseArray;

.field private final c:Lcom/google/android/gms/internal/ads/zzen;

.field private final d:Lcom/google/android/gms/internal/ads/zzen;

.field private final e:Lcom/google/android/gms/internal/ads/zzen;

.field private final f:[B

.field private final g:Lcom/google/android/gms/internal/ads/zzen;

.field private final h:Lcom/google/android/gms/internal/ads/zzacs;

.field private final i:Lcom/google/android/gms/internal/ads/zzen;

.field private final j:Ljava/util/ArrayDeque;

.field private final k:Ljava/util/ArrayDeque;

.field private l:I

.field private m:I

.field private n:J

.field private o:I

.field private p:Lcom/google/android/gms/internal/ads/zzen;

.field private q:J

.field private r:I

.field private s:J

.field private t:J

.field private u:J

.field private v:Lcom/google/android/gms/internal/ads/zzafw;

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaft;->b:Lcom/google/android/gms/internal/ads/zzaft;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafx;->E:Lcom/google/android/gms/internal/ads/zzaab;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafx;->F:[B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    const-string v1, "application/x-emsg"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafx;->G:Lcom/google/android/gms/internal/ads/zzaf;

    return-void

    :array_1e
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(ILcom/google/android/gms/internal/ads/zzeu;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzeu;)V
    .registers 4

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->a:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacs;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->h:Lcom/google/android/gms/internal/ads/zzacs;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->i:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaar;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->c:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, 0x5

    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->d:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->e:Lcom/google/android/gms/internal/ads/zzen;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->f:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafx;->g:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->k:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->t:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->s:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->u:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzzx;->c:Lcom/google/android/gms/internal/ads/zzzx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->A:Lcom/google/android/gms/internal/ads/zzzx;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafx;->B:[Lcom/google/android/gms/internal/ads/zzabb;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->C:[Lcom/google/android/gms/internal/ads/zzabb;

    return-void
.end method

.method private static b(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    if-ltz p0, :cond_3

    return p0

    .line 1
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0
.end method

.method private static c(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;
    .registers 15

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_b9

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzafi;

    .line 3
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    const v7, 0x70737368    # 3.013775E29f

    if-ne v6, v7, :cond_b5

    if-nez v4, :cond_1e

    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_1e
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v9, :cond_33

    :goto_31
    move-object v6, v2

    goto :goto_99

    .line 7
    :cond_33
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    if-eq v8, v9, :cond_43

    goto :goto_31

    .line 9
    :cond_43
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v8

    if-eq v8, v7, :cond_4a

    goto :goto_31

    .line 10
    :cond_4a
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6c

    new-instance v6, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported pssh version: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PsshAtomUtil"

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_6c
    new-instance v9, Ljava/util/UUID;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->z()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->z()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_84

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 14
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 15
    :cond_84
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v10

    if-eq v8, v10, :cond_8f

    goto :goto_31

    :cond_8f
    new-array v10, v8, [B

    .line 16
    invoke-virtual {v6, v10, v1, v8}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzagd;

    invoke-direct {v6, v9, v7, v10}, Lcom/google/android/gms/internal/ads/zzagd;-><init>(Ljava/util/UUID;I[B)V

    :goto_99
    if-nez v6, :cond_9d

    move-object v6, v2

    goto :goto_a1

    .line 17
    :cond_9d
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzagd;->a(Lcom/google/android/gms/internal/ads/zzagd;)Ljava/util/UUID;

    move-result-object v6

    :goto_a1
    if-nez v6, :cond_ab

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 18
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b5

    :cond_ab
    new-instance v7, Lcom/google/android/gms/internal/ads/zzw;

    const-string v8, "video/mp4"

    .line 19
    invoke-direct {v7, v6, v2, v8, v5}, Lcom/google/android/gms/internal/ads/zzw;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 20
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b5
    :goto_b5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_b9
    if-nez v4, :cond_bc

    return-object v2

    .line 21
    :cond_bc
    new-instance p0, Lcom/google/android/gms/internal/ads/zzx;

    .line 22
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzx;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private final d()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    return-void
.end method

.method private static f(Lcom/google/android/gms/internal/ads/zzen;ILcom/google/android/gms/internal/ads/zzagi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_6b

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 3
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v1

    if-nez v1, :cond_27

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzagi;->l:[Z

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzagi;->e:I

    .line 4
    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_27
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzagi;->e:I

    if-ne v1, v2, :cond_4c

    .line 5
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzagi;->l:[Z

    .line 6
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result p1

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzagi;->a(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzagi;->n:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result p1

    .line 8
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzagi;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzagi;->o:Z

    return-void

    .line 10
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Senc sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0

    :cond_6b
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0
.end method

.method private final i(J)V
    .registers 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6ea

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafh;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzafh;->b:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_6ea

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzafh;

    .line 3
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    const v3, 0x6d6f6f76

    const/16 v6, 0xc

    const/16 v7, 0x8

    if-ne v1, v3, :cond_13d

    .line 4
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzafh;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafx;->c(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v1

    const v3, 0x6d766578

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzafh;->c(I)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v3

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v12, Landroid/util/SparseArray;

    .line 8
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzafh;->c:Ljava/util/List;

    .line 9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    :goto_4d
    if-ge v9, v8, :cond_b8

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzafh;->c:Ljava/util/List;

    .line 10
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzafi;

    .line 11
    iget v14, v13, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    const v15, 0x74726578

    if-ne v14, v15, :cond_96

    .line 12
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 13
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 14
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v14

    .line 15
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 16
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v10

    .line 17
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v6

    .line 18
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v13

    .line 19
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v11, Lcom/google/android/gms/internal/ads/zzafs;

    invoke-direct {v11, v15, v10, v6, v13}, Lcom/google/android/gms/internal/ads/zzafs;-><init>(IIII)V

    .line 20
    invoke-static {v14, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 21
    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzafs;

    invoke-virtual {v12, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b3

    :cond_96
    const v6, 0x6d656864

    if-ne v14, v6, :cond_b3

    .line 22
    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 23
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v5

    if-nez v5, :cond_af

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v4

    goto :goto_b3

    :cond_af
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v4

    :cond_b3
    :goto_b3
    add-int/lit8 v9, v9, 0x1

    const/16 v6, 0xc

    goto :goto_4d

    :cond_b8
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/gms/internal/ads/zzafu;

    invoke-direct {v9, v0}, Lcom/google/android/gms/internal/ads/zzafu;-><init>(Lcom/google/android/gms/internal/ads/zzafx;)V

    move-object v6, v1

    .line 26
    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzafr;->c(Lcom/google/android/gms/internal/ads/zzafh;Lcom/google/android/gms/internal/ads/zzaaj;JLcom/google/android/gms/internal/ads/zzx;ZZLcom/google/android/gms/internal/ads/zzfnj;)Ljava/util/List;

    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_10e

    const/4 v10, 0x0

    :goto_d6
    if-ge v10, v2, :cond_107

    .line 29
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzagj;

    .line 30
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzafw;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafx;->A:Lcom/google/android/gms/internal/ads/zzzx;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzagg;->b:I

    .line 31
    invoke-interface {v6, v10, v7}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v6

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzagg;->a:I

    .line 32
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/zzafx;->j(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzafs;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzagj;Lcom/google/android/gms/internal/ads/zzafs;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzagg;->a:I

    .line 33
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->t:J

    iget-wide v3, v4, Lcom/google/android/gms/internal/ads/zzagg;->e:J

    .line 34
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->t:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_d6

    :cond_107
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->A:Lcom/google/android/gms/internal/ads/zzzx;

    .line 35
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    goto/16 :goto_2

    :cond_10e
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_118

    const/4 v11, 0x1

    goto :goto_119

    :cond_118
    const/4 v11, 0x0

    :goto_119
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    const/4 v10, 0x0

    :goto_11d
    if-ge v10, v2, :cond_2

    .line 37
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzagj;

    .line 38
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzagg;->a:I

    .line 39
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzafw;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzagg;->a:I

    .line 40
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzafx;->j(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzafs;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzafw;->h(Lcom/google/android/gms/internal/ads/zzagj;Lcom/google/android/gms/internal/ads/zzafs;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_11d

    :cond_13d
    const v3, 0x6d6f6f66

    if-ne v1, v3, :cond_6d2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->f:[B

    .line 41
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzafh;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_14d
    if-ge v8, v6, :cond_63d

    .line 42
    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzafh;->d:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzafh;

    .line 43
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    const v12, 0x74726166

    if-ne v11, v12, :cond_61e

    const v11, 0x74666864

    .line 44
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v11

    .line 45
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 47
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 48
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v12

    const v13, 0xffffff

    and-int/2addr v12, v13

    .line 49
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v14

    .line 50
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzafw;

    if-nez v14, :cond_183

    const/4 v14, 0x0

    goto :goto_1cc

    :cond_183
    and-int/lit8 v15, v12, 0x1

    if-eqz v15, :cond_191

    .line 51
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v4

    iget-object v15, v14, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zzagi;->b:J

    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zzagi;->c:J

    :cond_191
    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzafw;->e:Lcom/google/android/gms/internal/ads/zzafs;

    and-int/lit8 v5, v12, 0x2

    if-eqz v5, :cond_19e

    .line 52
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_1a0

    .line 53
    :cond_19e
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzafs;->a:I

    :goto_1a0
    and-int/lit8 v15, v12, 0x8

    if-eqz v15, :cond_1a9

    .line 54
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v15

    goto :goto_1ab

    .line 55
    :cond_1a9
    iget v15, v4, Lcom/google/android/gms/internal/ads/zzafs;->b:I

    :goto_1ab
    and-int/lit8 v16, v12, 0x10

    if-eqz v16, :cond_1b6

    .line 56
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v16

    move/from16 v9, v16

    goto :goto_1b8

    .line 57
    :cond_1b6
    iget v9, v4, Lcom/google/android/gms/internal/ads/zzafs;->c:I

    :goto_1b8
    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_1c1

    .line 58
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v4

    goto :goto_1c3

    .line 59
    :cond_1c1
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzafs;->d:I

    .line 60
    :goto_1c3
    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzafs;

    invoke-direct {v12, v5, v15, v9, v4}, Lcom/google/android/gms/internal/ads/zzafs;-><init>(IIII)V

    iput-object v12, v11, Lcom/google/android/gms/internal/ads/zzagi;->a:Lcom/google/android/gms/internal/ads/zzafs;

    :goto_1cc
    if-nez v14, :cond_1d0

    goto/16 :goto_61e

    .line 61
    :cond_1d0
    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iget-wide v11, v4, Lcom/google/android/gms/internal/ads/zzagi;->p:J

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzagi;->q:Z

    .line 62
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzafw;->i()V

    const/4 v9, 0x1

    .line 63
    invoke-static {v14, v9}, Lcom/google/android/gms/internal/ads/zzafw;->g(Lcom/google/android/gms/internal/ads/zzafw;Z)V

    const v15, 0x74666474

    .line 64
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v15

    if-eqz v15, :cond_203

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 65
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 66
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v11

    if-ne v11, v9, :cond_1fa

    .line 67
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v11

    goto :goto_1fe

    :cond_1fa
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v11

    :goto_1fe
    iput-wide v11, v4, Lcom/google/android/gms/internal/ads/zzagi;->p:J

    iput-boolean v9, v4, Lcom/google/android/gms/internal/ads/zzagi;->q:Z

    goto :goto_207

    :cond_203
    iput-wide v11, v4, Lcom/google/android/gms/internal/ads/zzagi;->p:J

    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzagi;->q:Z

    .line 68
    :goto_207
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzafh;->c:Ljava/util/List;

    .line 69
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_210
    const v13, 0x7472756e

    if-ge v11, v9, :cond_23a

    .line 70
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lcom/google/android/gms/internal/ads/zzafi;

    move-object/from16 v18, v1

    .line 71
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    if-ne v1, v13, :cond_233

    .line 72
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v7, 0xc

    .line 73
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v1

    if-lez v1, :cond_233

    add-int/2addr v15, v1

    add-int/lit8 v12, v12, 0x1

    :cond_233
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v18

    const/16 v7, 0x8

    goto :goto_210

    :cond_23a
    move-object/from16 v18, v1

    const/4 v1, 0x0

    iput v1, v14, Lcom/google/android/gms/internal/ads/zzafw;->h:I

    iput v1, v14, Lcom/google/android/gms/internal/ads/zzafw;->g:I

    iput v1, v14, Lcom/google/android/gms/internal/ads/zzafw;->f:I

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iput v12, v1, Lcom/google/android/gms/internal/ads/zzagi;->d:I

    iput v15, v1, Lcom/google/android/gms/internal/ads/zzagi;->e:I

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzagi;->g:[I

    .line 75
    array-length v7, v7

    if-ge v7, v12, :cond_256

    new-array v7, v12, [J

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzagi;->f:[J

    new-array v7, v12, [I

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzagi;->g:[I

    :cond_256
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzagi;->h:[I

    .line 76
    array-length v7, v7

    if-ge v7, v15, :cond_26f

    mul-int/lit8 v15, v15, 0x7d

    div-int/lit8 v15, v15, 0x64

    .line 77
    new-array v7, v15, [I

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzagi;->h:[I

    .line 78
    new-array v7, v15, [J

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzagi;->i:[J

    .line 79
    new-array v7, v15, [Z

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzagi;->j:[Z

    .line 80
    new-array v7, v15, [Z

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzagi;->l:[Z

    :cond_26f
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_272
    const-wide/16 v19, 0x0

    if-ge v1, v9, :cond_3f1

    .line 81
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzafi;

    .line 82
    iget v12, v15, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    if-ne v12, v13, :cond_3c1

    add-int/lit8 v12, v7, 0x1

    .line 83
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v13, 0x8

    .line 84
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 85
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v13

    const v17, 0xffffff

    and-int v13, v13, v17

    move-object/from16 v21, v5

    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzafw;->d:Lcom/google/android/gms/internal/ads/zzagj;

    .line 86
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    move/from16 v22, v6

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    move/from16 v23, v9

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzagi;->a:Lcom/google/android/gms/internal/ads/zzafs;

    .line 87
    sget v24, Lcom/google/android/gms/internal/ads/zzew;->a:I

    move/from16 v24, v12

    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzagi;->g:[I

    .line 88
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v25

    aput v25, v12, v7

    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzagi;->f:[J

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzagi;->b:J

    .line 89
    aput-wide v2, v12, v7

    and-int/lit8 v27, v13, 0x1

    if-eqz v27, :cond_2c5

    .line 90
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v0

    move/from16 v27, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    aput-wide v2, v12, v7

    goto :goto_2c7

    :cond_2c5
    move/from16 v27, v1

    :goto_2c7
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_2cd

    const/4 v0, 0x1

    goto :goto_2ce

    :cond_2cd
    const/4 v0, 0x0

    .line 91
    :goto_2ce
    iget v1, v9, Lcom/google/android/gms/internal/ads/zzafs;->d:I

    if-eqz v0, :cond_2d6

    .line 92
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v1

    :cond_2d6
    and-int/lit16 v2, v13, 0x100

    and-int/lit16 v3, v13, 0x200

    and-int/lit16 v12, v13, 0x400

    and-int/lit16 v13, v13, 0x800

    move/from16 v28, v1

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzagg;->h:[J

    if-eqz v1, :cond_2fe

    move/from16 v29, v8

    array-length v8, v1

    move-object/from16 v30, v10

    const/4 v10, 0x1

    if-ne v8, v10, :cond_302

    const/4 v8, 0x0

    .line 93
    aget-wide v31, v1, v8

    cmp-long v1, v31, v19

    if-nez v1, :cond_302

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzagg;->i:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    check-cast v1, [J

    aget-wide v19, v1, v8

    goto :goto_302

    :cond_2fe
    move/from16 v29, v8

    move-object/from16 v30, v10

    :cond_302
    :goto_302
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzagi;->h:[I

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzagi;->i:[J

    iget-object v10, v6, Lcom/google/android/gms/internal/ads/zzagi;->j:[Z

    move-object/from16 v31, v4

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzagi;->g:[I

    .line 95
    aget v4, v4, v7

    add-int/2addr v4, v11

    move-object/from16 v38, v10

    move/from16 v32, v11

    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    move-object v5, v8

    iget-wide v7, v6, Lcom/google/android/gms/internal/ads/zzagi;->p:J

    move-object/from16 v39, v1

    move/from16 v1, v32

    :goto_31c
    if-ge v1, v4, :cond_3b8

    if-eqz v2, :cond_329

    .line 96
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v32

    move/from16 v40, v2

    move/from16 v2, v32

    goto :goto_32d

    :cond_329
    move/from16 v40, v2

    iget v2, v9, Lcom/google/android/gms/internal/ads/zzafs;->b:I

    :goto_32d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafx;->b(I)I

    if-eqz v3, :cond_33b

    .line 97
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v32

    move/from16 v41, v3

    move/from16 v3, v32

    goto :goto_33f

    :cond_33b
    move/from16 v41, v3

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzafs;->c:I

    :goto_33f
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzafx;->b(I)I

    if-eqz v12, :cond_34d

    .line 98
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v32

    move/from16 v42, v0

    move/from16 v0, v32

    goto :goto_35a

    :cond_34d
    move/from16 v42, v0

    if-nez v1, :cond_358

    if-eqz v0, :cond_357

    move/from16 v0, v28

    const/4 v1, 0x0

    goto :goto_35a

    :cond_357
    const/4 v1, 0x0

    .line 99
    :cond_358
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzafs;->d:I

    :goto_35a
    if-eqz v13, :cond_369

    .line 100
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v32

    move/from16 v43, v4

    move/from16 v44, v12

    move/from16 v45, v13

    move/from16 v4, v32

    goto :goto_370

    :cond_369
    move/from16 v43, v4

    move/from16 v44, v12

    move/from16 v45, v13

    const/4 v4, 0x0

    :goto_370
    int-to-long v12, v4

    add-long/2addr v12, v7

    sub-long v32, v12, v19

    const-wide/32 v34, 0xf4240

    move-wide/from16 v36, v10

    .line 101
    invoke-static/range {v32 .. v37}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v12

    aput-wide v12, v5, v1

    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzagi;->q:Z

    if-nez v4, :cond_38f

    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzafw;->d:Lcom/google/android/gms/internal/ads/zzagj;

    move-object/from16 v33, v9

    move-wide/from16 v34, v10

    .line 102
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/zzagj;->h:J

    add-long/2addr v12, v9

    aput-wide v12, v5, v1

    goto :goto_393

    :cond_38f
    move-object/from16 v33, v9

    move-wide/from16 v34, v10

    .line 103
    :goto_393
    aput v3, v39, v1

    const/16 v3, 0x10

    shr-int/2addr v0, v3

    const/4 v3, 0x1

    and-int/2addr v0, v3

    xor-int/2addr v0, v3

    if-eq v3, v0, :cond_39f

    const/4 v0, 0x0

    goto :goto_3a0

    :cond_39f
    const/4 v0, 0x1

    .line 104
    :goto_3a0
    aput-boolean v0, v38, v1

    int-to-long v2, v2

    add-long/2addr v7, v2

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, v33

    move-wide/from16 v10, v34

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v0, v42

    move/from16 v4, v43

    move/from16 v12, v44

    move/from16 v13, v45

    goto/16 :goto_31c

    :cond_3b8
    move/from16 v43, v4

    .line 105
    iput-wide v7, v6, Lcom/google/android/gms/internal/ads/zzagi;->p:J

    move/from16 v7, v24

    move/from16 v11, v43

    goto :goto_3d8

    :cond_3c1
    move/from16 v27, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v31, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v29, v8

    move/from16 v23, v9

    move-object/from16 v30, v10

    move/from16 v32, v11

    const v17, 0xffffff

    :goto_3d8
    add-int/lit8 v1, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v21

    move/from16 v6, v22

    move/from16 v9, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v8, v29

    move-object/from16 v10, v30

    move-object/from16 v4, v31

    const v13, 0x7472756e

    goto/16 :goto_272

    :cond_3f1
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v31, v4

    move/from16 v22, v6

    move/from16 v29, v8

    move-object/from16 v30, v10

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzafw;->d:Lcom/google/android/gms/internal/ads/zzagj;

    .line 106
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    move-object/from16 v1, v31

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagi;->a:Lcom/google/android/gms/internal/ads/zzafs;

    .line 107
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzafs;->a:I

    .line 109
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzagg;->a(I)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    const v2, 0x7361697a

    move-object/from16 v10, v30

    .line 110
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v2

    if-eqz v2, :cond_48e

    .line 111
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagh;->d:I

    const/16 v4, 0x8

    .line 113
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_430

    .line 115
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 116
    :cond_430
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v4

    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v5

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzagi;->e:I

    if-gt v5, v6, :cond_46f

    if-nez v4, :cond_455

    .line 118
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzagi;->l:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_442
    if-ge v6, v5, :cond_453

    .line 119
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v8

    add-int/2addr v7, v8

    if-le v8, v3, :cond_44d

    const/4 v8, 0x1

    goto :goto_44e

    :cond_44d
    const/4 v8, 0x0

    .line 120
    :goto_44e
    aput-boolean v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_442

    :cond_453
    const/4 v4, 0x0

    goto :goto_462

    :cond_455
    if-le v4, v3, :cond_459

    const/4 v2, 0x1

    goto :goto_45a

    :cond_459
    const/4 v2, 0x0

    :goto_45a
    mul-int v7, v4, v5

    .line 121
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzagi;->l:[Z

    const/4 v4, 0x0

    .line 122
    invoke-static {v3, v4, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 123
    :goto_462
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagi;->l:[Z

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzagi;->e:I

    .line 124
    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v7, :cond_48e

    .line 125
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzagi;->a(I)V

    goto :goto_48e

    .line 126
    :cond_46f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saiz sample count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is greater than fragment sample count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_48e
    :goto_48e
    const v2, 0x7361696f

    .line 128
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v2

    if-eqz v2, :cond_4dc

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v3, 0x8

    .line 129
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4aa

    .line 131
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 132
    :cond_4aa
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v3

    if-ne v3, v6, :cond_4c5

    .line 133
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzagi;->c:J

    if-nez v3, :cond_4bd

    .line 134
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v2

    goto :goto_4c1

    :cond_4bd
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v2

    :goto_4c1
    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzagi;->c:J

    goto :goto_4dc

    .line 135
    :cond_4c5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_4dc
    :goto_4dc
    const/4 v2, 0x0

    const v3, 0x73656e63

    .line 137
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v3

    if-eqz v3, :cond_4ec

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v4, 0x0

    .line 138
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzafx;->f(Lcom/google/android/gms/internal/ads/zzen;ILcom/google/android/gms/internal/ads/zzagi;)V

    :cond_4ec
    if-eqz v0, :cond_4f3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagh;->b:Ljava/lang/String;

    move-object/from16 v32, v0

    goto :goto_4f5

    :cond_4f3
    move-object/from16 v32, v2

    :goto_4f5
    move-object v0, v2

    move-object v3, v0

    const/4 v4, 0x0

    .line 139
    :goto_4f8
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzafh;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_535

    .line 140
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzafh;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzafi;

    .line 141
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 142
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    const v7, 0x73626770

    const v8, 0x73656967

    if-ne v5, v7, :cond_521

    const/16 v7, 0xc

    .line 143
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 144
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    if-ne v5, v8, :cond_532

    move-object v0, v6

    goto :goto_532

    :cond_521
    const/16 v7, 0xc

    const v9, 0x73677064

    if-ne v5, v9, :cond_532

    .line 145
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 146
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    if-ne v5, v8, :cond_532

    move-object v3, v6

    :cond_532
    :goto_532
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f8

    :cond_535
    const/16 v7, 0xc

    if-eqz v0, :cond_5d8

    if-nez v3, :cond_53d

    goto/16 :goto_5d8

    :cond_53d
    const/16 v4, 0x8

    .line 147
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v5

    const/4 v6, 0x4

    .line 149
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    const/4 v8, 0x1

    if-ne v5, v8, :cond_554

    .line 150
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 151
    :cond_554
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v0

    if-ne v0, v8, :cond_5d1

    .line 152
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 153
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v0

    .line 154
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    if-ne v0, v8, :cond_57a

    .line 155
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v4

    cmp-long v0, v4, v19

    if-eqz v0, :cond_573

    goto :goto_580

    :cond_573
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 156
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_57a
    const/4 v4, 0x2

    if-lt v0, v4, :cond_580

    .line 157
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 158
    :cond_580
    :goto_580
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    cmp-long v0, v4, v8

    if-nez v0, :cond_5ca

    const/4 v0, 0x1

    .line 159
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 160
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v4

    and-int/lit16 v5, v4, 0xf0

    shr-int/lit8 v35, v5, 0x4

    and-int/lit8 v36, v4, 0xf

    .line 161
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v4

    if-ne v4, v0, :cond_5d9

    .line 162
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v33

    const/16 v4, 0x10

    new-array v5, v4, [B

    const/4 v6, 0x0

    .line 163
    invoke-virtual {v3, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    if-nez v33, :cond_5b8

    .line 164
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v2

    new-array v9, v2, [B

    .line 165
    invoke-virtual {v3, v9, v6, v2}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    move-object/from16 v37, v9

    goto :goto_5ba

    :cond_5b8
    move-object/from16 v37, v2

    :goto_5ba
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzagi;->k:Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagh;

    const/16 v31, 0x1

    move-object/from16 v30, v2

    move-object/from16 v34, v5

    .line 166
    invoke-direct/range {v30 .. v37}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzagi;->m:Lcom/google/android/gms/internal/ads/zzagh;

    goto :goto_5d9

    :cond_5ca
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 167
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_5d1
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 168
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_5d8
    :goto_5d8
    const/4 v0, 0x1

    .line 169
    :cond_5d9
    :goto_5d9
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzafh;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_5e0
    if-ge v3, v2, :cond_618

    .line 170
    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzafh;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzafi;

    .line 171
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    const v6, 0x75756964

    if-ne v5, v6, :cond_60c

    .line 172
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v5, 0x8

    .line 173
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    move-object/from16 v8, v26

    const/4 v6, 0x0

    const/16 v9, 0x10

    .line 174
    invoke-virtual {v4, v8, v6, v9}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    sget-object v11, Lcom/google/android/gms/internal/ads/zzafx;->F:[B

    .line 175
    invoke-static {v8, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_613

    .line 176
    invoke-static {v4, v9, v1}, Lcom/google/android/gms/internal/ads/zzafx;->f(Lcom/google/android/gms/internal/ads/zzen;ILcom/google/android/gms/internal/ads/zzagi;)V

    goto :goto_613

    :cond_60c
    move-object/from16 v8, v26

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v9, 0x10

    :cond_613
    :goto_613
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v26, v8

    goto :goto_5e0

    :cond_618
    move-object/from16 v8, v26

    const/16 v5, 0x8

    const/4 v6, 0x0

    goto :goto_62d

    :cond_61e
    :goto_61e
    move-object/from16 v18, v1

    move-object/from16 v25, v2

    move/from16 v22, v6

    move/from16 v29, v8

    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v8, v3

    :goto_62d
    add-int/lit8 v1, v29, 0x1

    move-object/from16 v0, p0

    move-object v3, v8

    move/from16 v6, v22

    move-object/from16 v2, v25

    const/16 v7, 0x8

    move v8, v1

    move-object/from16 v1, v18

    goto/16 :goto_14d

    :cond_63d
    move-object v1, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 177
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafh;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafx;->c(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v0

    move-object/from16 v3, p0

    if-eqz v0, :cond_68e

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 178
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_651
    if-ge v4, v1, :cond_68e

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 179
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzafw;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzafw;->d:Lcom/google/android/gms/internal/ads/zzagj;

    .line 180
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzagi;->a:Lcom/google/android/gms/internal/ads/zzafs;

    .line 181
    sget v9, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzafs;->a:I

    .line 182
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzagg;->a(I)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v7

    if-eqz v7, :cond_670

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzagh;->b:Ljava/lang/String;

    goto :goto_671

    :cond_670
    move-object v7, v2

    .line 183
    :goto_671
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzx;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzafw;->d:Lcom/google/android/gms/internal/ads/zzagj;

    .line 184
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    .line 185
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzad;->b(Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v7

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzafw;->a:Lcom/google/android/gms/internal/ads/zzabb;

    .line 186
    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_651

    :cond_68e
    iget-wide v0, v3, Lcom/google/android/gms/internal/ads/zzafx;->s:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v4

    if-eqz v2, :cond_6e7

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 187
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_6a0
    if-ge v10, v0, :cond_6ca

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 188
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafw;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzafx;->s:J

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzafw;->f:I

    :goto_6ae
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzagi;->e:I

    if-ge v2, v7, :cond_6c7

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzagi;->i:[J

    .line 189
    aget-wide v8, v7, v2

    cmp-long v7, v8, v4

    if-gez v7, :cond_6c7

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzagi;->j:[Z

    .line 190
    aget-boolean v6, v6, v2

    if-eqz v6, :cond_6c4

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzafw;->i:I

    :cond_6c4
    add-int/lit8 v2, v2, 0x1

    goto :goto_6ae

    :cond_6c7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6a0

    :cond_6ca
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v3, Lcom/google/android/gms/internal/ads/zzafx;->s:J

    goto :goto_6e7

    :cond_6d2
    move-object v3, v0

    move-object v1, v2

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e7

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzafh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzafh;->e(Lcom/google/android/gms/internal/ads/zzafh;)V

    :cond_6e7
    :goto_6e7
    move-object v0, v3

    goto/16 :goto_2

    :cond_6ea
    move-object v3, v0

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafx;->d()V

    return-void
.end method

.method private static final j(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzafs;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzafs;

    return-object p0

    .line 3
    :cond_f
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzafs;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagf;->a(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result p1

    return p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_4
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_53b

    const-string v10, "FragmentedMp4Extractor"

    if-eq v2, v8, :cond_2fb

    const-wide v3, 0x7fffffffffffffffL

    const/4 v12, 0x3

    if-eq v2, v5, :cond_29b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->v:Lcom/google/android/gms/internal/ads/zzafw;

    if-nez v2, :cond_99

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v13

    move-wide v14, v3

    move-object v3, v7

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v13, :cond_61

    .line 2
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/google/android/gms/internal/ads/zzafw;

    .line 3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzafw;->j(Lcom/google/android/gms/internal/ads/zzafw;)Z

    move-result v16

    if-nez v16, :cond_43

    iget v11, v5, Lcom/google/android/gms/internal/ads/zzafw;->f:I

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzafw;->d:Lcom/google/android/gms/internal/ads/zzagj;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzagj;->b:I

    if-eq v11, v6, :cond_5d

    :cond_43
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzafw;->j(Lcom/google/android/gms/internal/ads/zzafw;)Z

    move-result v6

    if-eqz v6, :cond_52

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzafw;->h:I

    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzagi;->d:I

    if-ne v6, v11, :cond_52

    goto :goto_5d

    .line 4
    :cond_52
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzafw;->d()J

    move-result-wide v18

    cmp-long v6, v18, v14

    if-gez v6, :cond_5d

    move-object v3, v5

    move-wide/from16 v14, v18

    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    goto :goto_2b

    :cond_61
    if-nez v3, :cond_7e

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->q:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_77

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzk;

    .line 6
    invoke-virtual {v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafx;->d()V

    goto :goto_4

    :cond_77
    const-string v1, "Offset to end of mdat was negative."

    .line 8
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 9
    :cond_7e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzafw;->d()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v13

    sub-long/2addr v4, v13

    long-to-int v2, v4

    if-gez v2, :cond_90

    const-string v2, "Ignoring negative offset to sample data."

    .line 10
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_90
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzzk;

    .line 11
    invoke-virtual {v4, v2, v9}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->v:Lcom/google/android/gms/internal/ads/zzafw;

    move-object v2, v3

    :cond_99
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    const/4 v4, 0x6

    if-ne v3, v12, :cond_134

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafw;->b()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    .line 13
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzafw;->f:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzafw;->i:I

    if-ge v5, v6, :cond_e1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 14
    invoke-virtual {v1, v3, v9}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafw;->f()Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v1

    if-nez v1, :cond_b6

    goto :goto_d4

    .line 16
    :cond_b6
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzagi;->n:Lcom/google/android/gms/internal/ads/zzen;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzagh;->d:I

    if-eqz v1, :cond_c1

    .line 17
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :cond_c1
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzafw;->f:I

    .line 18
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzagi;->b(I)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 20
    :cond_d4
    :goto_d4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafw;->k()Z

    move-result v1

    if-nez v1, :cond_dc

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafx;->v:Lcom/google/android/gms/internal/ads/zzafw;

    :cond_dc
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    :goto_de
    const/4 v1, 0x0

    goto/16 :goto_29a

    .line 21
    :cond_e1
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzafw;->d:Lcom/google/android/gms/internal/ads/zzagj;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzagg;->g:I

    if-ne v5, v8, :cond_f5

    add-int/lit8 v3, v3, -0x8

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzk;

    const/16 v5, 0x8

    .line 22
    invoke-virtual {v3, v5, v9}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 23
    :cond_f5
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzafw;->d:Lcom/google/android/gms/internal/ads/zzagj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    const/4 v5, 0x7

    .line 24
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzafw;->c(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafx;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 25
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzyy;->b(ILcom/google/android/gms/internal/ads/zzen;)V

    .line 26
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzafw;->a:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafx;->g:Lcom/google/android/gms/internal/ads/zzen;

    invoke-interface {v3, v6, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    goto :goto_12a

    .line 27
    :cond_122
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    .line 28
    invoke-virtual {v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzafw;->c(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    .line 29
    :goto_12a
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    const/4 v3, 0x4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->y:I

    .line 30
    :cond_134
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzafw;->d:Lcom/google/android/gms/internal/ads/zzagj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    .line 31
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzafw;->a:Lcom/google/android/gms/internal/ads/zzabb;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafw;->e()J

    move-result-wide v10

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzagg;->j:I

    if-nez v6, :cond_153

    :goto_142
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    if-ge v3, v4, :cond_237

    sub-int/2addr v4, v3

    .line 33
    invoke-interface {v5, v1, v4, v9}, Lcom/google/android/gms/internal/ads/zzabb;->b(Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    goto :goto_142

    .line 34
    :cond_153
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzafx;->d:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v13

    .line 35
    aput-byte v9, v13, v9

    .line 36
    aput-byte v9, v13, v8

    const/4 v14, 0x2

    .line 37
    aput-byte v9, v13, v14

    add-int/lit8 v14, v6, 0x1

    const/4 v15, 0x4

    rsub-int/lit8 v6, v6, 0x4

    :goto_165
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    if-ge v15, v12, :cond_237

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->y:I

    const-string v15, "video/hevc"

    if-nez v12, :cond_1d8

    move-object v12, v1

    check-cast v12, Lcom/google/android/gms/internal/ads/zzzk;

    .line 38
    invoke-virtual {v12, v13, v6, v14, v9}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->d:Lcom/google/android/gms/internal/ads/zzen;

    .line 39
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->d:Lcom/google/android/gms/internal/ads/zzen;

    .line 40
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v12

    if-lez v12, :cond_1d1

    add-int/lit8 v12, v12, -0x1

    .line 41
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->y:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 42
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->c:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v9, 0x4

    .line 43
    invoke-interface {v5, v12, v9}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->d:Lcom/google/android/gms/internal/ads/zzen;

    .line 44
    invoke-interface {v5, v12, v8}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->C:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 45
    array-length v12, v12

    if-lez v12, :cond_1c2

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    aget-byte v17, v13, v9

    .line 46
    sget-object v9, Lcom/google/android/gms/internal/ads/zzaar;->a:[B

    const-string v9, "video/avc"

    .line 47
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b4

    and-int/lit8 v9, v17, 0x1f

    if-eq v9, v4, :cond_1b2

    goto :goto_1b4

    :cond_1b2
    :goto_1b2
    const/4 v9, 0x1

    goto :goto_1c3

    .line 48
    :cond_1b4
    :goto_1b4
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c2

    and-int/lit8 v9, v17, 0x7e

    shr-int/2addr v9, v8

    const/16 v12, 0x27

    if-ne v9, v12, :cond_1c2

    goto :goto_1b2

    :cond_1c2
    const/4 v9, 0x0

    :goto_1c3
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->z:Z

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    add-int/lit8 v9, v9, 0x5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    goto :goto_233

    :cond_1d1
    const-string v1, "Invalid NAL length"

    .line 49
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 50
    :cond_1d8
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->z:Z

    if-eqz v9, :cond_221

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->e:Lcom/google/android/gms/internal/ads/zzen;

    .line 51
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->e:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v9

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzafx;->y:I

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v8, 0x0

    .line 52
    invoke-virtual {v4, v9, v8, v12, v8}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafx;->e:Lcom/google/android/gms/internal/ads/zzen;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzafx;->y:I

    .line 53
    invoke-interface {v5, v4, v8}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzafx;->y:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafx;->e:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v8

    .line 54
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzaar;->b([BI)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->e:Lcom/google/android/gms/internal/ads/zzen;

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    .line 55
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->e:Lcom/google/android/gms/internal/ads/zzen;

    .line 56
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafx;->e:Lcom/google/android/gms/internal/ads/zzen;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafx;->C:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 57
    invoke-static {v10, v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzzh;->a(JLcom/google/android/gms/internal/ads/zzen;[Lcom/google/android/gms/internal/ads/zzabb;)V

    goto :goto_227

    :cond_221
    const/4 v4, 0x0

    .line 58
    invoke-interface {v5, v1, v12, v4}, Lcom/google/android/gms/internal/ads/zzabb;->b(Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result v8

    move v4, v8

    .line 59
    :goto_227
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    add-int/2addr v8, v4

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzafx;->x:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzafx;->y:I

    sub-int/2addr v8, v4

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzafx;->y:I

    const/4 v4, 0x6

    const/4 v8, 0x1

    :goto_233
    const/4 v9, 0x0

    const/4 v12, 0x3

    goto/16 :goto_165

    .line 60
    :cond_237
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafw;->a()I

    move-result v20

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafw;->f()Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v1

    if-eqz v1, :cond_246

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagh;->c:Lcom/google/android/gms/internal/ads/zzaba;

    move-object/from16 v23, v1

    goto :goto_248

    :cond_246
    move-object/from16 v23, v7

    :goto_248
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->w:I

    const/16 v22, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v18, v10

    move/from16 v21, v1

    .line 62
    invoke-interface/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    :cond_255
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->k:Ljava/util/ArrayDeque;

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28d

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->k:Ljava/util/ArrayDeque;

    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafv;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->r:I

    .line 65
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzafv;->c:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->r:I

    .line 66
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzafv;->a:J

    .line 67
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzafv;->b:Z

    if-eqz v5, :cond_273

    add-long/2addr v3, v10

    :cond_273
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->B:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 68
    array-length v6, v5

    const/4 v8, 0x0

    :goto_277
    if-ge v8, v6, :cond_255

    aget-object v12, v5, v8

    const/4 v15, 0x1

    .line 69
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzafv;->c:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzafx;->r:I

    const/16 v18, 0x0

    move/from16 v17, v13

    move-wide v13, v3

    move/from16 v16, v9

    invoke-interface/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_277

    .line 70
    :cond_28d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafw;->k()Z

    move-result v1

    if-nez v1, :cond_295

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafx;->v:Lcom/google/android/gms/internal/ads/zzafw;

    :cond_295
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    goto/16 :goto_de

    :goto_29a
    return v1

    .line 71
    :cond_29b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move-object v6, v7

    const/4 v5, 0x0

    :goto_2a3
    if-ge v5, v2, :cond_2c6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzafw;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iget-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzagi;->o:Z

    if-eqz v9, :cond_2c3

    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/zzagi;->c:J

    cmp-long v10, v8, v3

    if-gez v10, :cond_2c3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/ads/zzafw;

    move-wide v3, v8

    :cond_2c3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a3

    :cond_2c6
    if-nez v6, :cond_2cd

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    goto/16 :goto_4

    :cond_2cd
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v8

    sub-long/2addr v3, v8

    long-to-int v2, v3

    if-ltz v2, :cond_2f4

    .line 75
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v4, 0x0

    .line 76
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzagi;->n:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v5

    .line 77
    invoke-virtual {v3, v6, v4, v5, v4}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzagi;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 78
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzagi;->o:Z

    goto/16 :goto_4

    :cond_2f4
    const-string v1, "Offset to encryption data was negative."

    .line 79
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 80
    :cond_2fb
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    long-to-int v2, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    sub-int/2addr v2, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->p:Lcom/google/android/gms/internal/ads/zzen;

    if-eqz v5, :cond_52b

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzzk;

    const/16 v9, 0x8

    const/4 v11, 0x0

    .line 81
    invoke-virtual {v8, v6, v9, v2, v11}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzafi;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzafx;->m:I

    invoke-direct {v2, v6, v5}, Lcom/google/android/gms/internal/ads/zzafi;-><init>(ILcom/google/android/gms/internal/ads/zzen;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v5

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    .line 82
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_332

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzafh;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzafh;->f(Lcom/google/android/gms/internal/ads/zzafi;)V

    goto/16 :goto_532

    .line 84
    :cond_332
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    if-ne v8, v4, :cond_3fc

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v3, 0x8

    .line 85
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v3

    const/4 v4, 0x4

    .line 87
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v14

    if-nez v3, :cond_358

    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v3

    .line 90
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v8

    goto :goto_360

    .line 91
    :cond_358
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v3

    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v8

    :goto_360
    add-long/2addr v5, v8

    const-wide/32 v10, 0xf4240

    move-wide v8, v3

    move-wide v12, v14

    .line 93
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v19

    const/4 v8, 0x2

    .line 94
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v12

    new-array v13, v12, [I

    new-array v10, v12, [J

    new-array v11, v12, [J

    new-array v8, v12, [J

    move-wide/from16 v21, v19

    const/4 v9, 0x0

    :goto_37d
    if-ge v9, v12, :cond_3d3

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v17

    const/high16 v23, -0x80000000

    and-int v23, v17, v23

    if-nez v23, :cond_3cb

    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v23

    const v25, 0x7fffffff

    and-int v17, v17, v25

    .line 98
    aput v17, v13, v9

    .line 99
    aput-wide v5, v10, v9

    .line 100
    aput-wide v21, v8, v9

    add-long v3, v3, v23

    const-wide/32 v21, 0xf4240

    move-object v7, v8

    move/from16 v24, v9

    move-wide v8, v3

    move-wide/from16 v25, v3

    move-object v3, v10

    move-object v4, v11

    move-wide/from16 v10, v21

    move/from16 v17, v12

    move-object v1, v13

    move-wide v12, v14

    .line 101
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v21

    .line 102
    aget-wide v8, v7, v24

    sub-long v8, v21, v8

    aput-wide v8, v4, v24

    const/4 v8, 0x4

    .line 103
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 104
    aget v9, v1, v24

    int-to-long v9, v9

    add-long/2addr v5, v9

    add-int/lit8 v9, v24, 0x1

    move-object v13, v1

    move-object v10, v3

    move-object v11, v4

    move-object v8, v7

    move/from16 v12, v17

    move-wide/from16 v3, v25

    const/4 v7, 0x0

    move-object/from16 v1, p1

    goto :goto_37d

    :cond_3cb
    const-string v1, "Unhandled indirect reference"

    const/4 v2, 0x0

    .line 105
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_3d3
    move-object v7, v8

    move-object v3, v10

    move-object v4, v11

    move-object v1, v13

    .line 106
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzzi;

    invoke-direct {v5, v1, v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzzi;-><init>([I[J[J[J)V

    .line 107
    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 108
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->u:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->A:Lcom/google/android/gms/internal/ads/zzzx;

    .line 109
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaax;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzafx;->D:Z

    goto/16 :goto_528

    :cond_3fc
    if-ne v8, v3, :cond_528

    .line 110
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->B:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 111
    array-length v2, v2

    if-eqz v2, :cond_528

    const/16 v2, 0x8

    .line 112
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_46a

    const/4 v5, 0x1

    if-eq v2, v5, :cond_432

    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported emsg version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_528

    .line 115
    :cond_432
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v5

    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    move-wide v15, v5

    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v7

    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v5

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v9

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->D(C)Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->D(C)Ljava/lang/String;

    move-result-object v12

    .line 122
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-wide v5, v3

    move-wide v12, v7

    goto :goto_4af

    :cond_46a
    const/4 v2, 0x0

    .line 123
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->D(C)Ljava/lang/String;

    move-result-object v11

    .line 124
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->D(C)Ljava/lang/String;

    move-result-object v12

    .line 126
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v13

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    move-wide v9, v13

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v15

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->u:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_493

    add-long/2addr v5, v15

    move-wide/from16 v19, v5

    goto :goto_495

    :cond_493
    move-wide/from16 v19, v3

    .line 129
    :goto_495
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    move-wide v9, v13

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v5

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v9

    move-wide/from16 v28, v5

    move-wide/from16 v30, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-wide v5, v15

    move-wide/from16 v12, v19

    :goto_4af
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v2

    .line 131
    new-array v2, v2, [B

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v7

    const/4 v8, 0x0

    .line 132
    invoke-virtual {v1, v2, v8, v7}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 133
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacr;

    move-object/from16 v25, v1

    move-object/from16 v32, v2

    invoke-direct/range {v25 .. v32}, Lcom/google/android/gms/internal/ads/zzacr;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafx;->h:Lcom/google/android/gms/internal/ads/zzacs;

    .line 134
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzacs;->a(Lcom/google/android/gms/internal/ads/zzacr;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafx;->B:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 135
    array-length v8, v7

    const/4 v9, 0x0

    :goto_4d9
    if-ge v9, v8, :cond_4e7

    aget-object v10, v7, v9

    const/4 v11, 0x0

    .line 136
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 137
    invoke-interface {v10, v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4d9

    :cond_4e7
    cmp-long v2, v12, v3

    if-nez v2, :cond_4fc

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->k:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v4, 0x1

    invoke-direct {v3, v5, v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzafv;-><init>(JZI)V

    .line 138
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->r:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->r:I

    goto :goto_528

    :cond_4fc
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->k:Ljava/util/ArrayDeque;

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_515

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->k:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v4, 0x0

    invoke-direct {v3, v12, v13, v4, v1}, Lcom/google/android/gms/internal/ads/zzafv;-><init>(JZI)V

    .line 140
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->r:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->r:I

    goto :goto_528

    :cond_515
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->B:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 141
    array-length v3, v2

    const/4 v4, 0x0

    :goto_519
    if-ge v4, v3, :cond_528

    aget-object v5, v2, v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v12

    move v9, v1

    .line 142
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_519

    :cond_528
    :goto_528
    move-object/from16 v1, p1

    goto :goto_532

    .line 143
    :cond_52b
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v5, 0x0

    .line 144
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 145
    :goto_532
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    .line 146
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzafx;->i(J)V

    goto/16 :goto_4

    :cond_53b
    const/4 v5, 0x0

    .line 147
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    if-nez v2, :cond_568

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->i:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x1

    .line 148
    invoke-interface {v1, v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzzv;->g([BIIZ)Z

    move-result v2

    if-nez v2, :cond_551

    const/4 v1, -0x1

    return v1

    :cond_551
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->i:Lcom/google/android/gms/internal/ads/zzen;

    .line 149
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->i:Lcom/google/android/gms/internal/ads/zzen;

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->i:Lcom/google/android/gms/internal/ads/zzen;

    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->m:I

    :cond_568
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_58d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->i:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzzk;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 152
    invoke-virtual {v5, v2, v6, v6, v7}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->i:Lcom/google/android/gms/internal/ads/zzen;

    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    goto :goto_5c0

    :cond_58d
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_5c0

    .line 154
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_5b1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    .line 155
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5b0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    .line 156
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzafh;

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzafh;->b:J

    goto :goto_5b1

    :cond_5b0
    move-wide v5, v7

    :cond_5b1
    :goto_5b1
    cmp-long v2, v5, v7

    if-eqz v2, :cond_5c0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    .line 157
    :cond_5c0
    :goto_5c0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_745

    .line 158
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v5

    sub-long/2addr v5, v7

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->m:I

    const v7, 0x6d646174

    const v8, 0x6d6f6f66

    if-eq v2, v8, :cond_5da

    if-ne v2, v7, :cond_5ed

    :cond_5da
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->D:Z

    if-nez v2, :cond_5ed

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->A:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaaw;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzafx;->t:J

    invoke-direct {v9, v10, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 159
    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->D:Z

    :cond_5ed
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->m:I

    if-ne v2, v8, :cond_60b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 160
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_5f8
    if-ge v9, v2, :cond_60b

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 161
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzafw;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzafw;->b:Lcom/google/android/gms/internal/ads/zzagi;

    iput-wide v5, v10, Lcom/google/android/gms/internal/ads/zzagi;->c:J

    iput-wide v5, v10, Lcom/google/android/gms/internal/ads/zzagi;->b:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_5f8

    :cond_60b
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->m:I

    if-ne v2, v7, :cond_61c

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafx;->v:Lcom/google/android/gms/internal/ads/zzafw;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->q:J

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    goto/16 :goto_4

    :cond_61c
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_71e

    const v5, 0x7472616b

    if-eq v2, v5, :cond_71e

    const v5, 0x6d646961

    if-eq v2, v5, :cond_71e

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_71e

    const v5, 0x7374626c

    if-eq v2, v5, :cond_71e

    if-eq v2, v8, :cond_71e

    const v5, 0x74726166

    if-eq v2, v5, :cond_71e

    const v5, 0x6d766578

    if-eq v2, v5, :cond_71e

    const v5, 0x65647473

    if-ne v2, v5, :cond_648

    goto/16 :goto_71e

    :cond_648
    const v5, 0x68646c72    # 4.3148E24f

    const-wide/32 v6, 0x7fffffff

    if-eq v2, v5, :cond_6e7

    const v5, 0x6d646864

    if-eq v2, v5, :cond_6e7

    const v5, 0x6d766864

    if-eq v2, v5, :cond_6e7

    if-eq v2, v4, :cond_6e7

    const v4, 0x73747364

    if-eq v2, v4, :cond_6e7

    const v4, 0x73747473

    if-eq v2, v4, :cond_6e7

    const v4, 0x63747473

    if-eq v2, v4, :cond_6e7

    const v4, 0x73747363

    if-eq v2, v4, :cond_6e7

    const v4, 0x7374737a

    if-eq v2, v4, :cond_6e7

    const v4, 0x73747a32

    if-eq v2, v4, :cond_6e7

    const v4, 0x7374636f

    if-eq v2, v4, :cond_6e7

    const v4, 0x636f3634

    if-eq v2, v4, :cond_6e7

    const v4, 0x73747373

    if-eq v2, v4, :cond_6e7

    const v4, 0x74666474

    if-eq v2, v4, :cond_6e7

    const v4, 0x74666864

    if-eq v2, v4, :cond_6e7

    const v4, 0x746b6864

    if-eq v2, v4, :cond_6e7

    const v4, 0x74726578

    if-eq v2, v4, :cond_6e7

    const v4, 0x7472756e

    if-eq v2, v4, :cond_6e7

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_6e7

    const v4, 0x7361697a

    if-eq v2, v4, :cond_6e7

    const v4, 0x7361696f

    if-eq v2, v4, :cond_6e7

    const v4, 0x73656e63

    if-eq v2, v4, :cond_6e7

    const v4, 0x75756964

    if-eq v2, v4, :cond_6e7

    const v4, 0x73626770

    if-eq v2, v4, :cond_6e7

    const v4, 0x73677064

    if-eq v2, v4, :cond_6e7

    const v4, 0x656c7374

    if-eq v2, v4, :cond_6e7

    const v4, 0x6d656864

    if-eq v2, v4, :cond_6e7

    if-ne v2, v3, :cond_6d2

    goto :goto_6e7

    .line 162
    :cond_6d2
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    cmp-long v4, v2, v6

    if-gtz v4, :cond_6e0

    const/4 v2, 0x0

    .line 163
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->p:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    goto/16 :goto_4

    :cond_6e0
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 164
    :cond_6e7
    :goto_6e7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_717

    .line 165
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_710

    .line 166
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    long-to-int v5, v4

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafx;->i:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 167
    invoke-static {v4, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->p:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->l:I

    goto/16 :goto_4

    :cond_710
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 168
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_717
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 169
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 170
    :cond_71e
    :goto_71e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzafh;

    const-wide/16 v7, -0x8

    add-long/2addr v3, v7

    .line 171
    invoke-direct {v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzafh;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafx;->n:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafx;->o:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-nez v2, :cond_740

    .line 172
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzafx;->i(J)V

    goto/16 :goto_4

    .line 173
    :cond_740
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafx;->d()V

    goto/16 :goto_4

    :cond_745
    const-string v1, "Atom size less than header length (unsupported)."

    .line 174
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    goto :goto_74d

    :goto_74c
    throw v1

    :goto_74d
    goto :goto_74c
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->A:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafx;->d()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->B:[Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzew;->G([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->B:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzafx;->G:Lcom/google/android/gms/internal/ads/zzaf;

    .line 4
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->a:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->C:[Lcom/google/android/gms/internal/ads/zzabb;

    const/16 p1, 0x64

    :goto_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafx;->C:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 6
    array-length v1, v1

    if-ge v0, v1, :cond_4e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafx;->A:Lcom/google/android/gms/internal/ads/zzzx;

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x3

    .line 7
    invoke-interface {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafx;->a:Ljava/util/List;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaf;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafx;->C:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 9
    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v2

    goto :goto_2d

    :cond_4e
    return-void
.end method

.method public final h(JJ)V
    .registers 7

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafx;->b:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzafw;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->k:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzafx;->r:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzafx;->s:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->j:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafx;->d()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzaft (com.google.android.gms.internal.ads.zzaft)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzaft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzaft;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaft;->b:Lcom/google/android/gms/internal/ads/zzaft;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaa;->a(Lcom/google/android/gms/internal/ads/zzaab;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    return-object p1
.end method

.method public final zza()[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzafx;->E:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafx;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(ILcom/google/android/gms/internal/ads/zzeu;)V

    aput-object v1, v0, v2

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzafu (com.google.android.gms.internal.ads.zzafu)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzafu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzafx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzafx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->a:Lcom/google/android/gms/internal/ads/zzafx;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzagg;

    return-object p1
.end method
