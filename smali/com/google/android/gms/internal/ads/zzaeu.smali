###### Class com.google.android.gms.internal.ads.zzaeu (com.google.android.gms.internal.ads.zzaeu)
.class public final Lcom/google/android/gms/internal/ads/zzaeu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final c0:Lcom/google/android/gms/internal/ads/zzaab;

.field private static final d0:[B

.field private static final e0:[B

.field private static final f0:[B

.field private static final g0:[B

.field private static final h0:Ljava/util/UUID;

.field private static final i0:Ljava/util/Map;


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/android/gms/internal/ads/zzef;

.field private D:Lcom/google/android/gms/internal/ads/zzef;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:J

.field private I:J

.field private J:I

.field private K:I

.field private L:[I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:J

.field private S:I

.field private T:I

.field private U:I

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:B

.field private final a:Lcom/google/android/gms/internal/ads/zzaep;

.field private a0:Z

.field private final b:Lcom/google/android/gms/internal/ads/zzaew;

.field private b0:Lcom/google/android/gms/internal/ads/zzzx;

.field private final c:Landroid/util/SparseArray;

.field private final d:Z

.field private final e:Lcom/google/android/gms/internal/ads/zzen;

.field private final f:Lcom/google/android/gms/internal/ads/zzen;

.field private final g:Lcom/google/android/gms/internal/ads/zzen;

.field private final h:Lcom/google/android/gms/internal/ads/zzen;

.field private final i:Lcom/google/android/gms/internal/ads/zzen;

.field private final j:Lcom/google/android/gms/internal/ads/zzen;

.field private final k:Lcom/google/android/gms/internal/ads/zzen;

.field private final l:Lcom/google/android/gms/internal/ads/zzen;

.field private final m:Lcom/google/android/gms/internal/ads/zzen;

.field private final n:Lcom/google/android/gms/internal/ads/zzen;

.field private o:Ljava/nio/ByteBuffer;

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:Lcom/google/android/gms/internal/ads/zzaet;

.field private v:Z

.field private w:I

.field private x:J

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaeq;->b:Lcom/google/android/gms/internal/ads/zzaeq;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaeu;->c0:Lcom/google/android/gms/internal/ads/zzaab;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_6e

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaeu;->d0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->C(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaeu;->e0:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_82

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaeu;->f0:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_96

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaeu;->g0:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    .line 3
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaeu;->h0:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaeu;->i0:Ljava/util/Map;

    return-void

    nop

    :array_6e
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_82
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_96
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaeu;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaen;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->r:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->s:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->t:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->z:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->A:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->B:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->a:Lcom/google/android/gms/internal/ads/zzaep;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaeu;Lcom/google/android/gms/internal/ads/zzaer;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaep;->a(Lcom/google/android/gms/internal/ads/zzaeo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->d:Z

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaew;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->b:Lcom/google/android/gms/internal/ads/zzaew;

    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->h:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->i:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaar;->a:[B

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->e:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->f:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0x8

    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->l:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->m:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 15
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->n:Lcom/google/android/gms/internal/ads/zzen;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    return-void
.end method

.method static bridge synthetic b()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaeu;->i0:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic c()Ljava/util/UUID;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaeu;->h0:Ljava/util/UUID;

    return-object v0
.end method

.method static bridge synthetic m()[B
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaeu;->e0:[B

    return-object v0
.end method

.method protected static final n(I)I
    .registers 1

    sparse-switch p0, :sswitch_data_10

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/4 p0, 0x5

    return p0

    :sswitch_7
    const/4 p0, 0x4

    return p0

    :sswitch_9
    const/4 p0, 0x1

    return p0

    :sswitch_b
    const/4 p0, 0x3

    return p0

    :sswitch_d
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_d
        0x86 -> :sswitch_b
        0x88 -> :sswitch_d
        0x9b -> :sswitch_d
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xa5 -> :sswitch_7
        0xa6 -> :sswitch_9
        0xae -> :sswitch_9
        0xb0 -> :sswitch_d
        0xb3 -> :sswitch_d
        0xb5 -> :sswitch_5
        0xb7 -> :sswitch_9
        0xba -> :sswitch_d
        0xbb -> :sswitch_9
        0xd7 -> :sswitch_d
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_9
        0xe7 -> :sswitch_d
        0xee -> :sswitch_d
        0xf1 -> :sswitch_d
        0xfb -> :sswitch_d
        0x41e4 -> :sswitch_9
        0x41e7 -> :sswitch_d
        0x41ed -> :sswitch_7
        0x4254 -> :sswitch_d
        0x4255 -> :sswitch_7
        0x4282 -> :sswitch_b
        0x4285 -> :sswitch_d
        0x42f7 -> :sswitch_d
        0x4489 -> :sswitch_5
        0x47e1 -> :sswitch_d
        0x47e2 -> :sswitch_7
        0x47e7 -> :sswitch_9
        0x47e8 -> :sswitch_d
        0x4dbb -> :sswitch_9
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_d
        0x5034 -> :sswitch_9
        0x5035 -> :sswitch_9
        0x536e -> :sswitch_b
        0x53ab -> :sswitch_7
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_d
        0x55b0 -> :sswitch_9
        0x55b9 -> :sswitch_d
        0x55ba -> :sswitch_d
        0x55bb -> :sswitch_d
        0x55bc -> :sswitch_d
        0x55bd -> :sswitch_d
        0x55d0 -> :sswitch_9
        0x55d1 -> :sswitch_5
        0x55d2 -> :sswitch_5
        0x55d3 -> :sswitch_5
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_5
        0x55d7 -> :sswitch_5
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_5
        0x55da -> :sswitch_5
        0x55ee -> :sswitch_d
        0x56aa -> :sswitch_d
        0x56bb -> :sswitch_d
        0x6240 -> :sswitch_9
        0x6264 -> :sswitch_d
        0x63a2 -> :sswitch_7
        0x6d80 -> :sswitch_9
        0x75a1 -> :sswitch_9
        0x75a2 -> :sswitch_d
        0x7670 -> :sswitch_9
        0x7671 -> :sswitch_d
        0x7672 -> :sswitch_7
        0x7673 -> :sswitch_5
        0x7674 -> :sswitch_5
        0x7675 -> :sswitch_5
        0x22b59c -> :sswitch_b
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_d
        0x114d9b74 -> :sswitch_9
        0x1549a966 -> :sswitch_9
        0x1654ae6b -> :sswitch_9
        0x18538067 -> :sswitch_9
        0x1a45dfa3 -> :sswitch_9
        0x1c53bb6b -> :sswitch_9
        0x1f43b675 -> :sswitch_9
    .end sparse-switch
.end method

.method protected static final o(I)Z
    .registers 2

    const v0, 0x1549a966

    if-eq p0, v0, :cond_17

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_17

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_17

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private final p(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaet;IZ)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaeu;->d0:[B

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeu;->x(Lcom/google/android/gms/internal/ads/zzzv;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaeu;->w()V

    return p1

    :cond_15
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaeu;->f0:[B

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeu;->x(Lcom/google/android/gms/internal/ads/zzzv;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaeu;->w()V

    return p1

    :cond_2a
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/WEBVTT"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaeu;->g0:[B

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeu;->x(Lcom/google/android/gms/internal/ads/zzzv;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaeu;->w()V

    return p1

    :cond_3f
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaet;->X:Lcom/google/android/gms/internal/ads/zzabb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->V:Z

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_20a

    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/zzaet;->h:Z

    if-eqz v1, :cond_195

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->O:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->O:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->W:Z

    const/16 v6, 0x80

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzzk;

    .line 11
    invoke-virtual {v7, v1, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_84

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Z:B

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->W:Z

    goto :goto_8c

    :cond_84
    const/4 p1, 0x0

    const-string p2, "Extension bit is set in signal byte"

    .line 15
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 16
    :cond_8c
    :goto_8c
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Z:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_19f

    and-int/2addr v1, v2

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->O:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->O:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->a0:Z

    if-nez v7, :cond_df

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->l:Lcom/google/android/gms/internal/ads/zzen;

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v7

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzzk;

    const/16 v9, 0x8

    .line 18
    invoke-virtual {v8, v7, v5, v9, v5}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    add-int/2addr v7, v9

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->a0:Z

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v7

    if-ne v1, v2, :cond_bc

    goto :goto_bd

    :cond_bc
    const/4 v6, 0x0

    :goto_bd
    or-int/2addr v6, v9

    int-to-byte v6, v6

    .line 20
    aput-byte v6, v7, v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 21
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 22
    invoke-interface {v0, v6, v4, v4}, Lcom/google/android/gms/internal/ads/zzabb;->a(Lcom/google/android/gms/internal/ads/zzen;II)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->l:Lcom/google/android/gms/internal/ads/zzen;

    .line 23
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->l:Lcom/google/android/gms/internal/ads/zzen;

    .line 24
    invoke-interface {v0, v6, v9, v4}, Lcom/google/android/gms/internal/ads/zzabb;->a(Lcom/google/android/gms/internal/ads/zzen;II)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    add-int/2addr v6, v9

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    :cond_df
    if-ne v1, v2, :cond_19f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->X:Z

    if-nez v1, :cond_105

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzzk;

    .line 26
    invoke-virtual {v6, v1, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 27
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Y:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->X:Z

    :cond_105
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Y:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 29
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzzk;

    .line 31
    invoke-virtual {v7, v6, v5, v1, v5}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Y:I

    shr-int/2addr v1, v4

    add-int/2addr v1, v4

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_130

    .line 32
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_136

    .line 33
    :cond_130
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    :cond_136
    int-to-short v1, v1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_143
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Y:I

    if-ge v1, v8, :cond_165

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 36
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v8

    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_15a

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    .line 37
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_161

    :cond_15a
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    .line 38
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_161
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_143

    :cond_165
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    and-int/lit8 v7, v8, 0x1

    if-ne v7, v4, :cond_174

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_17f

    .line 40
    :cond_174
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    .line 41
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    :goto_17f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->m:Lcom/google/android/gms/internal/ads/zzen;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->o:Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->m:Lcom/google/android/gms/internal/ads/zzen;

    .line 45
    invoke-interface {v0, v1, v6, v4}, Lcom/google/android/gms/internal/ads/zzabb;->a(Lcom/google/android/gms/internal/ads/zzen;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    goto :goto_19f

    .line 46
    :cond_195
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaet;->i:[B

    if-eqz v1, :cond_19f

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    array-length v7, v1

    .line 47
    invoke-virtual {v6, v1, v7}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    .line 48
    :cond_19f
    :goto_19f
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    const-string v6, "A_OPUS"

    .line 49
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ac

    if-eqz p4, :cond_208

    goto :goto_1b0

    .line 50
    :cond_1ac
    iget p4, p2, Lcom/google/android/gms/internal/ads/zzaet;->f:I

    if-lez p4, :cond_208

    .line 51
    :goto_1b0
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->O:I

    const/high16 v1, 0x10000000

    or-int/2addr p4, v1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->O:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 52
    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    .line 53
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result p4

    add-int/2addr p4, p3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    sub-int/2addr p4, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 54
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    shr-int/lit8 v6, p4, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    shr-int/lit8 v6, p4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    const/4 v6, 0x3

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, v1, v6

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 59
    invoke-interface {v0, p4, v3, v2}, Lcom/google/android/gms/internal/ads/zzabb;->a(Lcom/google/android/gms/internal/ads/zzen;II)V

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    add-int/2addr p4, v3

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    :cond_208
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->V:Z

    :cond_20a
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    .line 60
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    const-string v1, "V_MPEG4/ISO/AVC"

    .line 61
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_252

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    const-string v1, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_226

    goto :goto_252

    .line 62
    :cond_226
    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzaet;->T:Lcom/google/android/gms/internal/ads/zzabc;

    if-nez p4, :cond_22b

    goto :goto_23d

    .line 63
    :cond_22b
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    .line 64
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result p4

    if-nez p4, :cond_234

    goto :goto_235

    :cond_234
    const/4 v4, 0x0

    :goto_235
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzaet;->T:Lcom/google/android/gms/internal/ads/zzabc;

    .line 65
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzabc;->d(Lcom/google/android/gms/internal/ads/zzzv;)V

    .line 66
    :goto_23d
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    if-ge p4, p3, :cond_2bb

    sub-int p4, p3, p4

    .line 67
    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/gms/internal/ads/zzaeu;->q(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzabb;I)I

    move-result p4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    goto :goto_23d

    .line 68
    :cond_252
    :goto_252
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->f:Lcom/google/android/gms/internal/ads/zzen;

    .line 69
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p4

    .line 70
    aput-byte v5, p4, v5

    .line 71
    aput-byte v5, p4, v4

    .line 72
    aput-byte v5, p4, v2

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzaet;->Y:I

    rsub-int/lit8 v2, v1, 0x4

    :goto_262
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    if-ge v4, p3, :cond_2bb

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->U:I

    if-nez v4, :cond_2a7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    .line 73
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v6, v2, v4

    sub-int v7, v1, v4

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzzk;

    .line 74
    invoke-virtual {v8, p4, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    if-lez v4, :cond_285

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    .line 75
    invoke-virtual {v6, p4, v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    :cond_285
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->f:Lcom/google/android/gms/internal/ads/zzen;

    .line 76
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->f:Lcom/google/android/gms/internal/ads/zzen;

    .line 77
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->U:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->e:Lcom/google/android/gms/internal/ads/zzen;

    .line 78
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->e:Lcom/google/android/gms/internal/ads/zzen;

    .line 79
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzaaz;->b(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    goto :goto_262

    .line 80
    :cond_2a7
    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/gms/internal/ads/zzaeu;->q(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzabb;I)I

    move-result v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->U:I

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaeu;->U:I

    goto :goto_262

    :cond_2bb
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->h:Lcom/google/android/gms/internal/ads/zzen;

    .line 82
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->h:Lcom/google/android/gms/internal/ads/zzen;

    .line 83
    invoke-static {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzaaz;->b(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzen;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    :cond_2d4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaeu;->w()V

    return p1
.end method

.method private final q(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzabb;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    if-lez v0, :cond_12

    .line 2
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzaaz;->b(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzen;I)V

    goto :goto_17

    :cond_12
    const/4 v0, 0x0

    .line 4
    invoke-static {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzaaz;->a(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result p1

    :goto_17
    return p1
.end method

.method private final r(J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_13
    const/4 p1, 0x0

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1
.end method

.method private final s(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "cueTimesUs",
            "cueClusterPositions"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->C:Lcom/google/android/gms/internal/ads/zzef;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->D:Lcom/google/android/gms/internal/ads/zzef;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1
.end method

.method private final t(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1
.end method

.method private final u(Lcom/google/android/gms/internal/ads/zzaet;JIII)V
    .registers 24
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaet;->T:Lcom/google/android/gms/internal/ads/zzabc;

    const/4 v9, 0x1

    if-eqz v2, :cond_1c

    .line 2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaet;->X:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaet;->j:Lcom/google/android/gms/internal/ads/zzaba;

    move-object v1, v2

    move-object v2, v3

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzabc;->c(Lcom/google/android/gms/internal/ads/zzabb;JIIILcom/google/android/gms/internal/ads/zzaba;)V

    goto/16 :goto_121

    .line 3
    :cond_1c
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "S_TEXT/WEBVTT"

    const-string v5, "S_TEXT/ASS"

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v2, :cond_3c

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_3c
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    const-string v8, "MatroskaExtractor"

    if-le v2, v9, :cond_48

    const-string v2, "Skipping subtitle sample in laced block."

    .line 6
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 7
    :cond_48
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaeu;->I:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v12

    if-nez v2, :cond_5c

    const-string v2, "Skipping subtitle sample with no duration."

    .line 8
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    move/from16 v2, p5

    goto/16 :goto_f3

    .line 9
    :cond_5c
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v8

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, 0x2c0618eb

    if-eq v12, v13, :cond_88

    const v5, 0x3e4ca2d8

    if-eq v12, v5, :cond_80

    const v4, 0x54c61e47

    if-eq v12, v4, :cond_78

    goto :goto_90

    :cond_78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    const/4 v2, 0x0

    goto :goto_91

    :cond_80
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    const/4 v2, 0x2

    goto :goto_91

    :cond_88
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    const/4 v2, 0x1

    goto :goto_91

    :cond_90
    :goto_90
    const/4 v2, -0x1

    :goto_91
    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_b3

    if-eq v2, v9, :cond_a8

    if-ne v2, v7, :cond_a2

    const/16 v2, 0x19

    const-string v5, "%02d:%02d:%02d.%03d"

    .line 11
    invoke-static {v10, v11, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzaeu;->y(JLjava/lang/String;J)[B

    move-result-object v3

    goto :goto_bb

    .line 12
    :cond_a2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 13
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_a8
    const/16 v2, 0x15

    const-wide/16 v3, 0x2710

    const-string v5, "%01d:%02d:%02d:%02d"

    .line 14
    invoke-static {v10, v11, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzaeu;->y(JLjava/lang/String;J)[B

    move-result-object v3

    goto :goto_bb

    :cond_b3
    const/16 v2, 0x13

    const-string v5, "%02d:%02d:%02d,%03d"

    .line 15
    invoke-static {v10, v11, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzaeu;->y(JLjava/lang/String;J)[B

    move-result-object v3

    .line 16
    :goto_bb
    array-length v4, v3

    invoke-static {v3, v6, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v2

    :goto_c5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v3

    if-ge v2, v3, :cond_e0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_dd

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    .line 19
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    goto :goto_e0

    :cond_dd
    add-int/lit8 v2, v2, 0x1

    goto :goto_c5

    .line 20
    :cond_e0
    :goto_e0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaet;->X:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v4

    .line 21
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaaz;->b(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzen;I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    add-int v2, p5, v2

    :goto_f3
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_111

    .line 23
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    if-le v3, v9, :cond_103

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 24
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    goto :goto_111

    .line 25
    :cond_103
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v3

    .line 27
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaet;->X:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaeu;->n:Lcom/google/android/gms/internal/ads/zzen;

    invoke-interface {v4, v5, v3, v7}, Lcom/google/android/gms/internal/ads/zzabb;->a(Lcom/google/android/gms/internal/ads/zzen;II)V

    add-int/2addr v2, v3

    :cond_111
    :goto_111
    move v14, v2

    .line 28
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaet;->X:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaet;->j:Lcom/google/android/gms/internal/ads/zzaba;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    .line 29
    :goto_121
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaeu;->F:Z

    return-void
.end method

.method private final v(Lcom/google/android/gms/internal/ads/zzzv;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v0

    if-lt v0, p2, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->j()I

    move-result v0

    if-ge v0, p2, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->j()I

    move-result v1

    add-int/2addr v1, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->H(I)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    sub-int v2, p2, v2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    return-void
.end method

.method private final w()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->S:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->T:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->U:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->V:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->W:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->X:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Y:I

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Z:B

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->a0:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->j:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    return-void
.end method

.method private final x(Lcom/google/android/gms/internal/ads/zzzv;[BI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->j()I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    add-int v4, v1, p3

    .line 3
    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 4
    array-length v4, p2

    .line 5
    invoke-virtual {v2, p2, v4}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    goto :goto_22

    .line 6
    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :goto_22
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 10
    invoke-virtual {p1, p2, v0, p3, v3}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    .line 11
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->k:Lcom/google/android/gms/internal/ads/zzen;

    .line 12
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    return-void
.end method

.method private static y(JLjava/lang/String;J)[B
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p0, v2

    if-eqz v4, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 1
    :goto_e
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    const-wide v2, 0xd693a400L

    div-long v4, p0, v2

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x3

    const/4 v9, 0x2

    long-to-int v5, v4

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    int-to-long v4, v5

    mul-long v4, v4, v2

    sub-long/2addr p0, v4

    const-wide/32 v1, 0x3938700

    div-long v3, p0, v1

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v0

    int-to-long v3, v4

    mul-long v3, v3, v1

    sub-long/2addr p0, v3

    const-wide/32 v0, 0xf4240

    div-long v2, p0, v0

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    int-to-long v2, v3

    mul-long v2, v2, v0

    sub-long/2addr p0, v2

    div-long/2addr p0, p3

    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v8

    invoke-static {v6, p2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzew;->C(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static z([II)[I
    .registers 3

    if-nez p0, :cond_5

    new-array p0, p1, [I

    return-object p0

    :cond_5
    array-length v0, p0

    if-lt v0, p1, :cond_9

    return-object p0

    :cond_9
    add-int/2addr v0, v0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaev;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaev;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaev;->a(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result p1

    return p1
.end method

.method protected final d(IILcom/google/android/gms/internal/ads/zzzv;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v5, 0xa3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v2, :cond_112

    if-eq v0, v5, :cond_112

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_dc

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_b2

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_a2

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_8d

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_67

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_57

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_41

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 2
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaet;->v:[B

    .line 3
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 4
    invoke-virtual {v0, v2, v10, v1, v10}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    return-void

    .line 5
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    .line 7
    :cond_57
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 8
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaet;->k:[B

    .line 9
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 10
    invoke-virtual {v0, v2, v10, v1, v10}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    return-void

    .line 11
    :cond_67
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->i:Lcom/google/android/gms/internal/ads/zzen;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->i:Lcom/google/android/gms/internal/ads/zzen;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    rsub-int/lit8 v2, v1, 0x4

    move-object v3, v8

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzk;

    .line 14
    invoke-virtual {v3, v0, v2, v1, v10}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->i:Lcom/google/android/gms/internal/ads/zzen;

    .line 15
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->i:Lcom/google/android/gms/internal/ads/zzen;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->w:I

    return-void

    .line 17
    :cond_8d
    new-array v2, v1, [B

    move-object v3, v8

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzk;

    .line 18
    invoke-virtual {v3, v2, v10, v1, v10}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    .line 19
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaba;

    invoke-direct {v1, v9, v2, v10, v10}, Lcom/google/android/gms/internal/ads/zzaba;-><init>(I[BII)V

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaet;->j:Lcom/google/android/gms/internal/ads/zzaba;

    return-void

    .line 21
    :cond_a2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 22
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaet;->i:[B

    .line 23
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 24
    invoke-virtual {v0, v2, v10, v1, v10}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    return-void

    .line 25
    :cond_b2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaet;->a(Lcom/google/android/gms/internal/ads/zzaet;)I

    move-result v2

    const v3, 0x64767643

    if-eq v2, v3, :cond_d1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaet;->a(Lcom/google/android/gms/internal/ads/zzaet;)I

    move-result v2

    const v3, 0x64766343

    if-ne v2, v3, :cond_ca

    goto :goto_d1

    .line 27
    :cond_ca
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 28
    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    return-void

    .line 29
    :cond_d1
    :goto_d1
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaet;->N:[B

    .line 30
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 31
    invoke-virtual {v0, v2, v10, v1, v10}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    return-void

    .line 32
    :cond_dc
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    if-eq v0, v6, :cond_e1

    return-void

    :cond_e1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->M:I

    .line 33
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaet;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->P:I

    if-ne v2, v4, :cond_10b

    .line 34
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    const-string v2, "V_VP9"

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzk;

    .line 38
    invoke-virtual {v2, v0, v10, v1, v10}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    return-void

    :cond_10b
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 39
    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    return-void

    :cond_112
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    const/16 v11, 0x8

    if-nez v2, :cond_137

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->b:Lcom/google/android/gms/internal/ads/zzaew;

    .line 40
    invoke-virtual {v2, v8, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzaew;->d(Lcom/google/android/gms/internal/ads/zzzv;ZZI)J

    move-result-wide v12

    long-to-int v2, v12

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->M:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->b:Lcom/google/android/gms/internal/ads/zzaew;

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaew;->a()I

    move-result v2

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->N:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v7, Lcom/google/android/gms/internal/ads/zzaeu;->I:J

    iput v9, v7, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 42
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    :cond_137
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    iget v12, v7, Lcom/google/android/gms/internal/ads/zzaeu;->M:I

    .line 43
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/gms/internal/ads/zzaet;

    if-nez v12, :cond_151

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->N:I

    sub-int v0, v1, v0

    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 44
    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    iput v10, v7, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    return-void

    .line 45
    :cond_151
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzaet;->d(Lcom/google/android/gms/internal/ads/zzaet;)V

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    if-ne v2, v9, :cond_2d8

    const/4 v2, 0x3

    .line 46
    invoke-direct {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzaeu;->v(Lcom/google/android/gms/internal/ads/zzzv;I)V

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 47
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v13

    aget-byte v13, v13, v6

    and-int/lit8 v13, v13, 0x6

    shr-int/2addr v13, v9

    const/16 v14, 0xff

    if-nez v13, :cond_17e

    iput v9, v7, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    .line 48
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/ads/zzaeu;->z([II)[I

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzaeu;->N:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x3

    .line 49
    aput v1, v2, v10

    goto/16 :goto_28c

    .line 50
    :cond_17e
    invoke-direct {v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzaeu;->v(Lcom/google/android/gms/internal/ads/zzzv;I)V

    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 51
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v15

    aget-byte v15, v15, v2

    and-int/2addr v15, v14

    add-int/2addr v15, v9

    iput v15, v7, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    .line 52
    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/zzaeu;->z([II)[I

    move-result-object v4

    iput-object v4, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    if-ne v13, v6, :cond_1a4

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->N:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    .line 53
    div-int/2addr v1, v2

    .line 54
    invoke-static {v4, v10, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_28c

    :cond_1a4
    if-ne v13, v9, :cond_1dc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    :goto_1a9
    iget v13, v7, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_1d1

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    .line 55
    aput v10, v13, v2

    :cond_1b3
    add-int/2addr v4, v9

    .line 56
    invoke-direct {v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzaeu;->v(Lcom/google/android/gms/internal/ads/zzzv;I)V

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 57
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v13

    add-int/lit8 v15, v4, -0x1

    aget-byte v13, v13, v15

    and-int/2addr v13, v14

    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    .line 58
    aget v16, v15, v2

    add-int v16, v16, v13

    aput v16, v15, v2

    if-eq v13, v14, :cond_1b3

    add-int v3, v3, v16

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a9

    :cond_1d1
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    iget v15, v7, Lcom/google/android/gms/internal/ads/zzaeu;->N:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    .line 59
    aput v1, v2, v13

    goto/16 :goto_28c

    :cond_1dc
    if-ne v13, v2, :cond_2d1

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v13, 0x0

    :goto_1e1
    iget v15, v7, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    add-int/lit8 v15, v15, -0x1

    if-ge v2, v15, :cond_283

    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    .line 60
    aput v10, v15, v2

    add-int/lit8 v4, v4, 0x1

    .line 61
    invoke-direct {v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzaeu;->v(Lcom/google/android/gms/internal/ads/zzzv;I)V

    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 62
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v15

    add-int/lit8 v16, v4, -0x1

    aget-byte v15, v15, v16

    if-eqz v15, :cond_27c

    const/4 v15, 0x0

    :goto_1fd
    if-ge v15, v11, :cond_24f

    rsub-int/lit8 v17, v15, 0x7

    shl-int v17, v9, v17

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 63
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    aget-byte v5, v5, v16

    and-int v5, v5, v17

    if-eqz v5, :cond_247

    add-int/2addr v4, v15

    .line 64
    invoke-direct {v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzaeu;->v(Lcom/google/android/gms/internal/ads/zzzv;I)V

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 65
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    add-int/lit8 v18, v16, 0x1

    aget-byte v5, v5, v16

    and-int/2addr v5, v14

    xor-int/lit8 v16, v17, -0x1

    and-int v5, v5, v16

    int-to-long v9, v5

    move/from16 v5, v18

    :goto_225
    if-ge v5, v4, :cond_239

    shl-long/2addr v9, v11

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 66
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v6, v5

    and-int/2addr v5, v14

    int-to-long v5, v5

    or-long/2addr v9, v5

    move/from16 v5, v16

    const/4 v6, 0x2

    goto :goto_225

    :cond_239
    if-lez v2, :cond_251

    const-wide/16 v5, 0x1

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    shl-long/2addr v5, v15

    const-wide/16 v15, -0x1

    add-long/2addr v5, v15

    sub-long/2addr v9, v5

    goto :goto_251

    :cond_247
    add-int/lit8 v15, v15, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_1fd

    :cond_24f
    const-wide/16 v9, 0x0

    :cond_251
    :goto_251
    const-wide/32 v5, -0x80000000

    cmp-long v15, v9, v5

    if-ltz v15, :cond_275

    const-wide/32 v5, 0x7fffffff

    cmp-long v15, v9, v5

    if-gtz v15, :cond_275

    .line 67
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    long-to-int v6, v9

    if-eqz v2, :cond_269

    add-int/lit8 v9, v2, -0x1

    .line 68
    aget v9, v5, v9

    add-int/2addr v6, v9

    :cond_269
    aput v6, v5, v2

    add-int/2addr v13, v6

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1e1

    :cond_275
    const-string v0, "EBML lacing sample size out of range."

    .line 69
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_27c
    const-string v0, "No valid varint length mask found"

    .line 70
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    .line 71
    :cond_283
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzaeu;->N:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    sub-int/2addr v1, v13

    .line 72
    aput v1, v2, v15

    .line 73
    :goto_28c
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    shl-int/2addr v1, v11

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/2addr v2, v14

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzaeu;->B:J

    or-int/2addr v1, v2

    int-to-long v1, v1

    .line 75
    invoke-direct {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzaeu;->r(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    iput-wide v3, v7, Lcom/google/android/gms/internal/ads/zzaeu;->H:J

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzaet;->d:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c8

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_2c6

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    aget-byte v0, v0, v2

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2c4

    const/16 v0, 0xa3

    goto :goto_2c8

    :cond_2c4
    const/16 v0, 0xa3

    :cond_2c6
    const/4 v1, 0x0

    goto :goto_2c9

    :cond_2c8
    :goto_2c8
    const/4 v1, 0x1

    :goto_2c9
    iput v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->O:I

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    const/4 v1, 0x0

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->J:I

    goto :goto_2d8

    :cond_2d1
    const-string v0, "Unexpected lacing value: 2"

    .line 77
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_2d8
    :goto_2d8
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_30b

    .line 78
    :goto_2dc
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->J:I

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    if-ge v0, v1, :cond_307

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    .line 79
    aget v0, v1, v0

    const/4 v1, 0x0

    .line 80
    invoke-direct {v7, v8, v12, v0, v1}, Lcom/google/android/gms/internal/ads/zzaeu;->p(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaet;IZ)I

    move-result v5

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->H:J

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->J:I

    iget v3, v12, Lcom/google/android/gms/internal/ads/zzaet;->e:I

    mul-int v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzaeu;->O:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaeu;->u(Lcom/google/android/gms/internal/ads/zzaet;JIII)V

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->J:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->J:I

    goto :goto_2dc

    :cond_307
    const/4 v0, 0x0

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    return-void

    :cond_30b
    const/4 v1, 0x1

    :goto_30c
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->J:I

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    if-ge v0, v2, :cond_322

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    .line 82
    aget v3, v2, v0

    .line 83
    invoke-direct {v7, v8, v12, v3, v1}, Lcom/google/android/gms/internal/ads/zzaeu;->p(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaet;IZ)I

    move-result v3

    aput v3, v2, v0

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->J:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->J:I

    goto :goto_30c

    :cond_322
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->F:Z

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->F:Z

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->a:Lcom/google/android/gms/internal/ads/zzaep;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaep;->b(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->y:Z

    if-eqz v3, :cond_20

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->A:J

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->z:J

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->y:Z

    goto :goto_30

    :cond_20
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->v:Z

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->A:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->A:J

    :goto_30
    const/4 p1, 0x1

    return p1

    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_53

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaet;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaet;->d(Lcom/google/android/gms/internal/ads/zzaet;)V

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->T:Lcom/google/android/gms/internal/ads/zzabc;

    if-eqz p2, :cond_50

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaet;->X:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaet;->j:Lcom/google/android/gms/internal/ads/zzaba;

    .line 5
    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzabc;->a(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaba;)V

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_53
    const/4 p1, -0x1

    return p1

    :cond_55
    return v0
.end method

.method protected final f(I)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 1
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->b0:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    const/16 v2, 0x8

    const-string v3, "A_OPUS"

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-eq v0, v1, :cond_334

    const/16 v1, 0xae

    const/4 v10, -0x1

    if-eq v0, v1, :cond_18a

    const/16 v1, 0x4dbb

    const-wide/16 v2, -0x1

    const v4, 0x1c53bb6b

    if-eq v0, v1, :cond_172

    const/16 v1, 0x6240

    if-eq v0, v1, :cond_13f

    const/16 v1, 0x6d80

    if-eq v0, v1, :cond_129

    const v1, 0x1549a966

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v1, :cond_111

    const v1, 0x1654ae6b

    if-eq v0, v1, :cond_fb

    if-eq v0, v4, :cond_3d

    goto/16 :goto_181

    .line 2
    :cond_3d
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->v:Z

    if-nez v0, :cond_f5

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->b0:Lcom/google/android/gms/internal/ads/zzzx;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->C:Lcom/google/android/gms/internal/ads/zzef;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzaeu;->D:Lcom/google/android/gms/internal/ads/zzef;

    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzaeu;->q:J

    cmp-long v16, v14, v2

    if-eqz v16, :cond_e8

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->t:J

    cmp-long v14, v2, v12

    if-eqz v14, :cond_e8

    if-eqz v1, :cond_e8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->a()I

    move-result v2

    if-eqz v2, :cond_e8

    if-eqz v4, :cond_e8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzef;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->a()I

    move-result v3

    if-eq v2, v3, :cond_69

    goto/16 :goto_e8

    .line 3
    :cond_69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->a()I

    move-result v2

    .line 4
    new-array v3, v2, [I

    .line 5
    new-array v12, v2, [J

    .line 6
    new-array v13, v2, [J

    .line 7
    new-array v14, v2, [J

    const/4 v15, 0x0

    :goto_76
    if-ge v15, v2, :cond_8b

    .line 8
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzef;->b(I)J

    move-result-wide v16

    aput-wide v16, v14, v15

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaeu;->q:J

    .line 9
    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzef;->b(I)J

    move-result-wide v18

    add-long v8, v8, v18

    aput-wide v8, v12, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_76

    :cond_8b
    const/4 v9, 0x0

    :goto_8c
    add-int/lit8 v1, v2, -0x1

    if-ge v9, v1, :cond_a6

    add-int/lit8 v1, v9, 0x1

    .line 10
    aget-wide v17, v12, v1

    aget-wide v19, v12, v9

    sub-long v10, v17, v19

    long-to-int v4, v10

    aput v4, v3, v9

    .line 11
    aget-wide v10, v14, v1

    aget-wide v17, v14, v9

    sub-long v10, v10, v17

    aput-wide v10, v13, v9

    move v9, v1

    const/4 v10, -0x1

    goto :goto_8c

    :cond_a6
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaeu;->q:J

    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzaeu;->p:J

    add-long/2addr v8, v10

    .line 12
    aget-wide v10, v12, v1

    sub-long/2addr v8, v10

    long-to-int v2, v8

    aput v2, v3, v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaeu;->t:J

    .line 13
    aget-wide v10, v14, v1

    sub-long/2addr v8, v10

    aput-wide v8, v13, v1

    cmp-long v2, v8, v5

    if-gtz v2, :cond_e2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MatroskaExtractor"

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 16
    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    .line 17
    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v13

    .line 18
    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v14

    :cond_e2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzzi;

    .line 19
    invoke-direct {v1, v3, v12, v13, v14}, Lcom/google/android/gms/internal/ads/zzzi;-><init>([I[J[J[J)V

    goto :goto_ef

    .line 20
    :cond_e8
    :goto_e8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaw;

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->t:J

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 21
    :goto_ef
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->v:Z

    :cond_f5
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->C:Lcom/google/android/gms/internal/ads/zzef;

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->D:Lcom/google/android/gms/internal/ads/zzef;

    return-void

    :cond_fb
    const/4 v0, 0x0

    .line 22
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_10a

    .line 24
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->b0:Lcom/google/android/gms/internal/ads/zzzx;

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    return-void

    :cond_10a
    const-string v1, "No valid tracks were found"

    .line 26
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    .line 27
    :cond_111
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->r:J

    cmp-long v2, v0, v12

    if-nez v2, :cond_11c

    const-wide/32 v0, 0xf4240

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->r:J

    :cond_11c
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->s:J

    cmp-long v2, v0, v12

    if-eqz v2, :cond_181

    .line 28
    invoke-direct {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzaeu;->r(J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->t:J

    return-void

    .line 29
    :cond_129
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 30
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaet;->h:Z

    if-eqz v1, :cond_181

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaet;->i:[B

    if-nez v0, :cond_137

    goto :goto_181

    :cond_137
    const-string v0, "Combining encryption and compression is not supported"

    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    .line 32
    :cond_13f
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 33
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaet;->h:Z

    if-eqz v1, :cond_181

    .line 34
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaet;->j:Lcom/google/android/gms/internal/ads/zzaba;

    if-eqz v1, :cond_16a

    .line 35
    new-instance v1, Lcom/google/android/gms/internal/ads/zzx;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzw;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzw;

    .line 36
    sget-object v4, Lcom/google/android/gms/internal/ads/zzo;->a:Ljava/util/UUID;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaet;->j:Lcom/google/android/gms/internal/ads/zzaba;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaba;->b:[B

    const-string v6, "video/webm"

    const/4 v8, 0x0

    .line 37
    invoke-direct {v3, v4, v8, v6, v5}, Lcom/google/android/gms/internal/ads/zzw;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 38
    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzw;)V

    .line 39
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaet;->l:Lcom/google/android/gms/internal/ads/zzx;

    return-void

    :cond_16a
    const/4 v8, 0x0

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    .line 40
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    .line 41
    :cond_172
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_182

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzaeu;->x:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_182

    if-ne v0, v4, :cond_181

    .line 42
    iput-wide v5, v7, Lcom/google/android/gms/internal/ads/zzaeu;->z:J

    :cond_181
    :goto_181
    return-void

    :cond_182
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_18a
    const/4 v1, -0x1

    .line 43
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    if-eqz v5, :cond_32c

    .line 45
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3b4

    goto/16 :goto_314

    .line 46
    :sswitch_19d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0xb

    goto/16 :goto_315

    :sswitch_1a7
    const-string v2, "A_FLAC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x16

    goto/16 :goto_315

    :sswitch_1b3
    const-string v2, "A_EAC3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x11

    goto/16 :goto_315

    :sswitch_1bf
    const-string v2, "V_MPEG2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/4 v2, 0x3

    goto/16 :goto_315

    :sswitch_1ca
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x1b

    goto/16 :goto_315

    :sswitch_1d6
    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x1d

    goto/16 :goto_315

    :sswitch_1e2
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_314

    goto/16 :goto_315

    :sswitch_1ec
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x1c

    goto/16 :goto_315

    :sswitch_1f8
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x18

    goto/16 :goto_315

    :sswitch_204
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x19

    goto/16 :goto_315

    :sswitch_210
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x1a

    goto/16 :goto_315

    :sswitch_21c
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x14

    goto/16 :goto_315

    :sswitch_228
    const-string v2, "V_THEORA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0xa

    goto/16 :goto_315

    :sswitch_234
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x1f

    goto/16 :goto_315

    :sswitch_240
    const-string v2, "V_VP9"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/4 v2, 0x1

    goto/16 :goto_315

    :sswitch_24b
    const-string v2, "V_VP8"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/4 v2, 0x0

    goto/16 :goto_315

    :sswitch_256
    const-string v2, "V_AV1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/4 v2, 0x2

    goto/16 :goto_315

    :sswitch_261
    const-string v2, "A_DTS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x13

    goto/16 :goto_315

    :sswitch_26d
    const-string v2, "A_AC3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x10

    goto/16 :goto_315

    :sswitch_279
    const-string v2, "A_AAC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0xd

    goto/16 :goto_315

    :sswitch_285
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x15

    goto/16 :goto_315

    :sswitch_291
    const-string v2, "S_VOBSUB"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x1e

    goto/16 :goto_315

    :sswitch_29d
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/4 v2, 0x7

    goto/16 :goto_315

    :sswitch_2a8
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/4 v2, 0x5

    goto/16 :goto_315

    :sswitch_2b3
    const-string v2, "S_DVBSUB"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x20

    goto :goto_315

    :sswitch_2be
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x9

    goto :goto_315

    :sswitch_2c9
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0xf

    goto :goto_315

    :sswitch_2d4
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0xe

    goto :goto_315

    :sswitch_2df
    const-string v2, "A_VORBIS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0xc

    goto :goto_315

    :sswitch_2ea
    const-string v2, "A_TRUEHD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x12

    goto :goto_315

    :sswitch_2f5
    const-string v2, "A_MS/ACM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/16 v2, 0x17

    goto :goto_315

    :sswitch_300
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/4 v2, 0x4

    goto :goto_315

    :sswitch_30a
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    const/4 v2, 0x6

    goto :goto_315

    :cond_314
    :goto_314
    const/4 v2, -0x1

    :goto_315
    packed-switch v2, :pswitch_data_43a

    :goto_318
    const/4 v0, 0x0

    goto :goto_329

    .line 47
    :pswitch_31a
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->b0:Lcom/google/android/gms/internal/ads/zzzx;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaet;->c:I

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaet;->e(Lcom/google/android/gms/internal/ads/zzzx;I)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaet;->c:I

    .line 49
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_318

    :goto_329
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    return-void

    :cond_32c
    const/4 v0, 0x0

    const-string v1, "CodecId is missing in TrackEntry element"

    .line 50
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    .line 51
    :cond_334
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    if-eq v0, v4, :cond_339

    return-void

    :cond_339
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->M:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzaet;

    .line 53
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaet;->d(Lcom/google/android/gms/internal/ads/zzaet;)V

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->R:J

    cmp-long v4, v0, v5

    if-lez v4, :cond_36f

    .line 54
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36f

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaeu;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 55
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 56
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->R:J

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 59
    array-length v2, v1

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    :cond_36f
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_371
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    if-ge v4, v1, :cond_37d

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    .line 61
    aget v1, v1, v4

    add-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_371

    :cond_37d
    const/4 v4, 0x0

    :goto_37e
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->K:I

    if-ge v4, v1, :cond_3af

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->H:J

    .line 62
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzaet;->e:I

    mul-int v3, v3, v4

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v5, v3

    add-long/2addr v5, v1

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->O:I

    if-nez v4, :cond_399

    iget-boolean v2, v7, Lcom/google/android/gms/internal/ads/zzaeu;->Q:Z

    if-nez v2, :cond_396

    or-int/lit8 v1, v1, 0x1

    :cond_396
    move v4, v1

    const/4 v9, 0x0

    goto :goto_39b

    :cond_399
    move v9, v4

    move v4, v1

    :goto_39b
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->L:[I

    .line 63
    aget v10, v1, v9

    sub-int v11, v0, v10

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v5

    move v5, v10

    move v6, v11

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaeu;->u(Lcom/google/android/gms/internal/ads/zzaet;JIII)V

    const/4 v0, 0x1

    add-int/lit8 v4, v9, 0x1

    move v0, v11

    goto :goto_37e

    :cond_3af
    const/4 v1, 0x0

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    return-void

    nop

    :sswitch_data_3b4
    .sparse-switch
        -0x7ce7f5de -> :sswitch_30a
        -0x7ce7f3b0 -> :sswitch_300
        -0x76567dc0 -> :sswitch_2f5
        -0x6a615338 -> :sswitch_2ea
        -0x672350af -> :sswitch_2df
        -0x585f4fce -> :sswitch_2d4
        -0x585f4fcd -> :sswitch_2c9
        -0x51dc40b2 -> :sswitch_2be
        -0x37a9c464 -> :sswitch_2b3
        -0x2016c535 -> :sswitch_2a8
        -0x2016c4e5 -> :sswitch_29d
        -0x19552dbd -> :sswitch_291
        -0x1538b2ba -> :sswitch_285
        0x3c02325 -> :sswitch_279
        0x3c02353 -> :sswitch_26d
        0x3c030c5 -> :sswitch_261
        0x4e81333 -> :sswitch_256
        0x4e86155 -> :sswitch_24b
        0x4e86156 -> :sswitch_240
        0x5e8da3e -> :sswitch_234
        0x1a8350d6 -> :sswitch_228
        0x2056f406 -> :sswitch_21c
        0x25e26ee2 -> :sswitch_210
        0x2b45174d -> :sswitch_204
        0x2b453ce4 -> :sswitch_1f8
        0x2c0618eb -> :sswitch_1ec
        0x32fdf009 -> :sswitch_1e2
        0x3e4ca2d8 -> :sswitch_1d6
        0x54c61e47 -> :sswitch_1ca
        0x6bd6c624 -> :sswitch_1bf
        0x7446132a -> :sswitch_1b3
        0x7446b0a6 -> :sswitch_1a7
        0x744ad97d -> :sswitch_19d
    .end sparse-switch

    :pswitch_data_43a
    .packed-switch 0x0
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
        :pswitch_31a
    .end packed-switch
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->b0:Lcom/google/android/gms/internal/ads/zzzx;

    return-void
.end method

.method public final h(JJ)V
    .registers 5

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->B:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->G:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->a:Lcom/google/android/gms/internal/ads/zzaep;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaep;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->b:Lcom/google/android/gms/internal/ads/zzaew;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaew;->e()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaeu;->w()V

    :goto_17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_31

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->c:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaet;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaet;->T:Lcom/google/android/gms/internal/ads/zzabc;

    if-eqz p2, :cond_2e

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzabc;->b()V

    :cond_2e
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_31
    return-void
.end method

.method protected final i(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_88

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_84

    packed-switch p1, :pswitch_data_92

    packed-switch p1, :pswitch_data_aa

    return-void

    .line 1
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 2
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->u:F

    return-void

    .line 3
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 4
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->t:F

    return-void

    .line 5
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 6
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->s:F

    return-void

    .line 7
    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 8
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->M:F

    return-void

    .line 9
    :pswitch_33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 10
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->L:F

    return-void

    .line 11
    :pswitch_3c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 12
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->K:F

    return-void

    .line 13
    :pswitch_45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 14
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->J:F

    return-void

    .line 15
    :pswitch_4e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 16
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->I:F

    return-void

    .line 17
    :pswitch_57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 18
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->H:F

    return-void

    .line 19
    :pswitch_60
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 20
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->G:F

    return-void

    .line 21
    :pswitch_69
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 22
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->F:F

    return-void

    .line 23
    :pswitch_72
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 24
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->E:F

    return-void

    .line 25
    :pswitch_7b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-float p2, p2

    .line 26
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->D:F

    return-void

    :cond_84
    double-to-long p1, p2

    .line 27
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->s:J

    return-void

    .line 28
    :cond_88
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    double-to-int p2, p2

    .line 29
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->Q:I

    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x55d1
        :pswitch_7b
        :pswitch_72
        :pswitch_69
        :pswitch_60
        :pswitch_57
        :pswitch_4e
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x7673
        :pswitch_21
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method

.method protected final j(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    const/16 v0, 0x5031

    const/4 v1, 0x0

    const-string v2, " not supported"

    if-eq p1, v0, :cond_23f

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_221

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_260

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_2e2

    goto/16 :goto_245

    .line 1
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 2
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->C:I

    return-void

    .line 3
    :pswitch_23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 4
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->B:I

    return-void

    .line 5
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 6
    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzaet;->x:Z

    long-to-int p1, p2

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzq;->a(I)I

    move-result p1

    if-eq p1, v0, :cond_245

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 8
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzaet;->y:I

    return-void

    .line 9
    :pswitch_3f
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    long-to-int p1, p2

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzq;->b(I)I

    move-result p1

    if-eq p1, v0, :cond_245

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 11
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzaet;->z:I

    return-void

    .line 12
    :pswitch_4e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_5d

    if-eq p1, v6, :cond_58

    goto/16 :goto_245

    :cond_58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 13
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzaet;->A:I

    return-void

    :cond_5d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 14
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzaet;->A:I

    return-void

    .line 15
    :sswitch_62
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->r:J

    return-void

    .line 16
    :sswitch_65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 17
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->e:I

    return-void

    .line 18
    :sswitch_6e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_8b

    if-eq p1, v7, :cond_86

    if-eq p1, v6, :cond_81

    if-eq p1, v5, :cond_7c

    goto/16 :goto_245

    :cond_7c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 19
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzaet;->r:I

    return-void

    :cond_81
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 20
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzaet;->r:I

    return-void

    :cond_86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 21
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzaet;->r:I

    return-void

    :cond_8b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 22
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaet;->r:I

    return-void

    :sswitch_90
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->R:J

    return-void

    .line 23
    :sswitch_93
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 24
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->P:I

    return-void

    .line 25
    :sswitch_9c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 26
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->S:J

    return-void

    .line 27
    :sswitch_a4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 28
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->R:J

    return-void

    .line 29
    :sswitch_ac
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 30
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->f:I

    return-void

    .line 31
    :sswitch_b5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    cmp-long v1, p2, v3

    if-nez v1, :cond_bf

    const/4 v0, 0x1

    .line 32
    :cond_bf
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaet;->U:Z

    return-void

    .line 33
    :sswitch_c2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 34
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->p:I

    return-void

    .line 35
    :sswitch_cb
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 36
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->q:I

    return-void

    .line 37
    :sswitch_d4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 38
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->o:I

    return-void

    :sswitch_dd
    long-to-int p3, p2

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    if-eqz p3, :cond_fc

    if-eq p3, v7, :cond_f7

    if-eq p3, v5, :cond_f2

    const/16 p1, 0xf

    if-eq p3, p1, :cond_ed

    goto/16 :goto_245

    :cond_ed
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 40
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzaet;->w:I

    return-void

    :cond_f2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 41
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzaet;->w:I

    return-void

    :cond_f7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 42
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzaet;->w:I

    return-void

    :cond_fc
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 43
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaet;->w:I

    return-void

    .line 44
    :sswitch_101
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->q:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->x:J

    return-void

    :sswitch_107
    cmp-long p1, p2, v3

    if-nez p1, :cond_10d

    goto/16 :goto_245

    .line 45
    :cond_10d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :sswitch_126
    const-wide/16 v3, 0x5

    cmp-long p1, p2, v3

    if-nez p1, :cond_12e

    goto/16 :goto_245

    :cond_12e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :sswitch_147
    cmp-long p1, p2, v3

    if-nez p1, :cond_14d

    goto/16 :goto_245

    :cond_14d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :sswitch_166
    cmp-long p1, p2, v3

    if-ltz p1, :cond_172

    const-wide/16 v3, 0x2

    cmp-long p1, p2, v3

    if-gtz p1, :cond_172

    goto/16 :goto_245

    :cond_172
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :sswitch_18b
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_193

    goto/16 :goto_245

    .line 50
    :cond_193
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 52
    :sswitch_1ac
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 53
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzaet;->b(Lcom/google/android/gms/internal/ads/zzaet;I)V

    return-void

    .line 54
    :sswitch_1b6
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Q:Z

    return-void

    :sswitch_1b9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->E:Z

    if-nez v0, :cond_245

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->s(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->D:Lcom/google/android/gms/internal/ads/zzef;

    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzef;->c(J)V

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzaeu;->E:Z

    return-void

    :sswitch_1c8
    long-to-int p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->P:I

    return-void

    .line 57
    :sswitch_1cc
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeu;->r(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->B:J

    return-void

    .line 58
    :sswitch_1d3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 59
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->c:I

    return-void

    .line 60
    :sswitch_1dc
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 61
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->n:I

    return-void

    .line 62
    :sswitch_1e5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->s(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->C:Lcom/google/android/gms/internal/ads/zzef;

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeu;->r(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzef;->c(J)V

    return-void

    .line 64
    :sswitch_1f2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 65
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->m:I

    return-void

    .line 66
    :sswitch_1fb
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 67
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->O:I

    return-void

    .line 68
    :sswitch_204
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeu;->r(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->I:J

    return-void

    .line 69
    :sswitch_20b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    cmp-long v1, p2, v3

    if-nez v1, :cond_215

    const/4 v0, 0x1

    .line 70
    :cond_215
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaet;->V:Z

    return-void

    .line 71
    :sswitch_218
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    long-to-int p3, p2

    .line 72
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaet;->d:I

    return-void

    :cond_221
    cmp-long p1, p2, v3

    if-nez p1, :cond_226

    goto :goto_245

    .line 73
    :cond_226
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncodingScope "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :cond_23f
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_246

    :cond_245
    :goto_245
    return-void

    :cond_246
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncodingOrder "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    nop

    :sswitch_data_260
    .sparse-switch
        0x83 -> :sswitch_218
        0x88 -> :sswitch_20b
        0x9b -> :sswitch_204
        0x9f -> :sswitch_1fb
        0xb0 -> :sswitch_1f2
        0xb3 -> :sswitch_1e5
        0xba -> :sswitch_1dc
        0xd7 -> :sswitch_1d3
        0xe7 -> :sswitch_1cc
        0xee -> :sswitch_1c8
        0xf1 -> :sswitch_1b9
        0xfb -> :sswitch_1b6
        0x41e7 -> :sswitch_1ac
        0x4254 -> :sswitch_18b
        0x4285 -> :sswitch_166
        0x42f7 -> :sswitch_147
        0x47e1 -> :sswitch_126
        0x47e8 -> :sswitch_107
        0x53ac -> :sswitch_101
        0x53b8 -> :sswitch_dd
        0x54b0 -> :sswitch_d4
        0x54b2 -> :sswitch_cb
        0x54ba -> :sswitch_c2
        0x55aa -> :sswitch_b5
        0x55ee -> :sswitch_ac
        0x56aa -> :sswitch_a4
        0x56bb -> :sswitch_9c
        0x6264 -> :sswitch_93
        0x75a2 -> :sswitch_90
        0x7671 -> :sswitch_6e
        0x23e383 -> :sswitch_65
        0x2ad7b1 -> :sswitch_62
    .end sparse-switch

    :pswitch_data_2e2
    .packed-switch 0x55b9
        :pswitch_4e
        :pswitch_3f
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
    .end packed-switch
.end method

.method protected final k(IJJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->b0:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eq p1, v0, :cond_9d

    const/16 v0, 0xae

    if-eq p1, v0, :cond_95

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_92

    const/16 v0, 0x4dbb

    const-wide/16 v3, -0x1

    if-eq p1, v0, :cond_8c

    const/16 v0, 0x5035

    const/4 v5, 0x1

    if-eq p1, v0, :cond_84

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_7c

    const v0, 0x18538067

    if-eq p1, v0, :cond_64

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_53

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_33

    goto :goto_52

    .line 2
    :cond_33
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->v:Z

    if-nez p1, :cond_52

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->d:Z

    if-eqz p1, :cond_44

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->z:J

    cmp-long p3, p1, v3

    if-eqz p3, :cond_44

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaeu;->y:Z

    return-void

    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->b0:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaaw;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->t:J

    invoke-direct {p2, p3, p4, v1, v2}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaeu;->v:Z

    :cond_52
    :goto_52
    return-void

    :cond_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzef;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzef;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->C:Lcom/google/android/gms/internal/ads/zzef;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzef;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzef;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->D:Lcom/google/android/gms/internal/ads/zzef;

    return-void

    :cond_64
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->q:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_77

    cmp-long p1, v0, p2

    if-nez p1, :cond_6f

    goto :goto_77

    :cond_6f
    const/4 p1, 0x0

    const-string p2, "Multiple Segment elements not supported"

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :cond_77
    :goto_77
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->q:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaeu;->p:J

    return-void

    .line 5
    :cond_7c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 6
    iput-boolean v5, p1, Lcom/google/android/gms/internal/ads/zzaet;->x:Z

    return-void

    .line 7
    :cond_84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 8
    iput-boolean v5, p1, Lcom/google/android/gms/internal/ads/zzaet;->h:Z

    return-void

    :cond_8c
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->w:I

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->x:J

    return-void

    :cond_92
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->E:Z

    return-void

    :cond_95
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaet;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    return-void

    :cond_9d
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->Q:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->R:J

    return-void
.end method

.method protected final l(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_51

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_23

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1b

    const v0, 0x22b59c

    if-eq p1, v0, :cond_12

    goto :goto_50

    .line 1
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaet;->c(Lcom/google/android/gms/internal/ads/zzaet;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 4
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->a:Ljava/lang/String;

    return-void

    :cond_23
    const-string p1, "webm"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_50

    :cond_34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DocType "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :cond_50
    :goto_50
    return-void

    .line 7
    :cond_51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->u:Lcom/google/android/gms/internal/ads/zzaet;

    .line 8
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzaet;->b:Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzaeq (com.google.android.gms.internal.ads.zzaeq)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzaeq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzaeq;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaeq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaeq;->b:Lcom/google/android/gms/internal/ads/zzaeq;

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
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaeu;->c0:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaeu;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaeu;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method
