###### Class com.google.android.gms.internal.ads.zzzp (com.google.android.gms.internal.ads.zzzp)
.class public final Lcom/google/android/gms/internal/ads/zzzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field private static final c:[I

.field private static final d:Lcom/google/android/gms/internal/ads/zzzo;

.field private static final e:Lcom/google/android/gms/internal/ads/zzzo;


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/zzfqk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzp;->c:[I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzzl;->a:Lcom/google/android/gms/internal/ads/zzzl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzzo;-><init>(Lcom/google/android/gms/internal/ads/zzzn;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzp;->d:Lcom/google/android/gms/internal/ads/zzzo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzzm;->a:Lcom/google/android/gms/internal/ads/zzzm;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzzo;-><init>(Lcom/google/android/gms/internal/ads/zzzn;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzp;->e:Lcom/google/android/gms/internal/ads/zzzo;

    return-void

    :array_1c
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(ILjava/util/List;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_d4

    :pswitch_5
    goto/16 :goto_d3

    .line 1
    :pswitch_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzabo;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzabo;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzzp;->e:Lcom/google/android/gms/internal/ads/zzzo;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzzo;->a([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :pswitch_1e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaci;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaci;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :pswitch_27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajh;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :pswitch_30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzp;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    if-nez p1, :cond_3a

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzp;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 10
    :cond_3a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaiv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeu;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(J)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzzp;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzahk;-><init>(ILjava/util/List;)V

    const v1, 0x1b8a0

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(ILcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzaiy;I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :pswitch_54
    new-instance p1, Lcom/google/android/gms/internal/ads/zzail;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzail;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 12
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzagq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzagq;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 13
    :pswitch_66
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafx;

    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(ILcom/google/android/gms/internal/ads/zzeu;)V

    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzagc;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzagc;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :pswitch_78
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafc;

    .line 18
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzafc;-><init>(I)V

    .line 19
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 20
    :pswitch_81
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzaeu;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 21
    :pswitch_8a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzacd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacd;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 22
    :pswitch_93
    sget-object p1, Lcom/google/android/gms/internal/ads/zzzp;->d:Lcom/google/android/gms/internal/ads/zzzo;

    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzzo;->a([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 24
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 25
    :cond_a7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaca;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 26
    :pswitch_b0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzabj;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzabj;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 27
    :pswitch_b9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahi;

    .line 28
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzahi;-><init>(I)V

    .line 29
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 30
    :pswitch_c2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzahf;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 31
    :pswitch_cb
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzahc;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d3
    :goto_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_c2
        :pswitch_b9
        :pswitch_b0
        :pswitch_93
        :pswitch_8a
        :pswitch_81
        :pswitch_78
        :pswitch_66
        :pswitch_5d
        :pswitch_54
        :pswitch_30
        :pswitch_27
        :pswitch_5
        :pswitch_1e
        :pswitch_10
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 24

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "Content-Type"

    move-object/from16 v4, p2

    .line 2
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_26

    .line 3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_26

    :cond_1f
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    :cond_26
    :goto_26
    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/16 v10, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0x9

    const/4 v15, 0x6

    const/16 v16, 0x1

    const/16 v17, 0xf

    const/16 v18, 0xa

    const/16 v19, 0x8

    const/4 v3, -0x1

    if-nez v4, :cond_42

    :goto_3f
    const/4 v4, -0x1

    goto/16 :goto_1a4

    .line 4
    :cond_42
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbt;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_346

    goto/16 :goto_176

    :sswitch_4f
    const-string v5, "video/x-matroska"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0xa

    goto/16 :goto_177

    :sswitch_5b
    const-string v5, "audio/webm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0xd

    goto/16 :goto_177

    :sswitch_67
    const-string v5, "audio/mpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0xf

    goto/16 :goto_177

    :sswitch_73
    const-string v5, "audio/midi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x9

    goto/16 :goto_177

    :sswitch_7f
    const-string v5, "audio/flac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/4 v4, 0x7

    goto/16 :goto_177

    :sswitch_8a
    const-string v5, "audio/eac3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/4 v4, 0x1

    goto/16 :goto_177

    :sswitch_95
    const-string v5, "audio/3gpp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/4 v4, 0x5

    goto/16 :goto_177

    :sswitch_a0
    const-string v5, "video/mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x10

    goto/16 :goto_177

    :sswitch_ac
    const-string v5, "audio/wav"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x16

    goto/16 :goto_177

    :sswitch_b8
    const-string v5, "audio/ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x13

    goto/16 :goto_177

    :sswitch_c4
    const-string v5, "audio/mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x11

    goto/16 :goto_177

    :sswitch_d0
    const-string v5, "audio/amr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/4 v4, 0x4

    goto/16 :goto_177

    :sswitch_db
    const-string v5, "audio/ac4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/4 v4, 0x3

    goto/16 :goto_177

    :sswitch_e6
    const-string v5, "audio/ac3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/4 v4, 0x0

    goto/16 :goto_177

    :sswitch_f1
    const-string v5, "video/x-flv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x8

    goto/16 :goto_177

    :sswitch_fd
    const-string v5, "application/webm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0xe

    goto/16 :goto_177

    :sswitch_109
    const-string v5, "audio/x-matroska"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0xb

    goto/16 :goto_177

    :sswitch_115
    const-string v5, "text/vtt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x17

    goto :goto_177

    :sswitch_120
    const-string v5, "video/x-msvideo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x19

    goto :goto_177

    :sswitch_12b
    const-string v5, "application/mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x12

    goto :goto_177

    :sswitch_136
    const-string v5, "image/jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x18

    goto :goto_177

    :sswitch_141
    const-string v5, "audio/amr-wb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/4 v4, 0x6

    goto :goto_177

    :sswitch_14b
    const-string v5, "video/webm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0xc

    goto :goto_177

    :sswitch_156
    const-string v5, "video/mp2t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x15

    goto :goto_177

    :sswitch_161
    const-string v5, "video/mp2p"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/16 v4, 0x14

    goto :goto_177

    :sswitch_16c
    const-string v5, "audio/eac3-joc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    const/4 v4, 0x2

    goto :goto_177

    :cond_176
    :goto_176
    const/4 v4, -0x1

    :goto_177
    packed-switch v4, :pswitch_data_3b0

    goto/16 :goto_3f

    :pswitch_17c
    const/16 v4, 0x10

    goto :goto_1a4

    :pswitch_17f
    const/16 v4, 0xe

    goto :goto_1a4

    :pswitch_182
    const/16 v4, 0xd

    goto :goto_1a4

    :pswitch_185
    const/16 v4, 0xc

    goto :goto_1a4

    :pswitch_188
    const/16 v4, 0xb

    goto :goto_1a4

    :pswitch_18b
    const/16 v4, 0xa

    goto :goto_1a4

    :pswitch_18e
    const/16 v4, 0x9

    goto :goto_1a4

    :pswitch_191
    const/16 v4, 0x8

    goto :goto_1a4

    :pswitch_194
    const/4 v4, 0x7

    goto :goto_1a4

    :pswitch_196
    const/4 v4, 0x6

    goto :goto_1a4

    :pswitch_198
    const/16 v4, 0xf

    goto :goto_1a4

    :pswitch_19b
    const/4 v4, 0x5

    goto :goto_1a4

    :pswitch_19d
    const/4 v4, 0x4

    goto :goto_1a4

    :pswitch_19f
    const/4 v4, 0x3

    goto :goto_1a4

    :pswitch_1a1
    const/4 v4, 0x1

    goto :goto_1a4

    :pswitch_1a3
    const/4 v4, 0x0

    :goto_1a4
    if-eq v4, v3, :cond_1a9

    .line 5
    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/internal/ads/zzzp;->b(ILjava/util/List;)V

    .line 6
    :cond_1a9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b2

    :cond_1af
    const/4 v10, -0x1

    goto/16 :goto_31b

    :cond_1b2
    const-string v6, ".ac3"

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31a

    const-string v6, ".ec3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c4

    goto/16 :goto_31a

    :cond_1c4
    const-string v6, ".ac4"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1cf

    const/4 v10, 0x1

    goto/16 :goto_31b

    :cond_1cf
    const-string v6, ".adts"

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_318

    const-string v6, ".aac"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e1

    goto/16 :goto_318

    :cond_1e1
    const-string v6, ".amr"

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/4 v10, 0x3

    goto/16 :goto_31b

    :cond_1ec
    const-string v6, ".flac"

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f7

    const/4 v10, 0x4

    goto/16 :goto_31b

    :cond_1f7
    const-string v6, ".flv"

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_202

    const/4 v10, 0x5

    goto/16 :goto_31b

    :cond_202
    const-string v6, ".mid"

    .line 13
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_315

    const-string v6, ".midi"

    .line 14
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_315

    const-string v6, ".smf"

    .line 15
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21c

    goto/16 :goto_315

    :cond_21c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".mk"

    add-int/lit8 v6, v6, -0x4

    .line 16
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_313

    const-string v6, ".webm"

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_234

    goto/16 :goto_313

    :cond_234
    const-string v6, ".mp3"

    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23f

    const/4 v10, 0x7

    goto/16 :goto_31b

    :cond_23f
    const-string v6, ".mp4"

    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_310

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    const-string v7, ".m4"

    .line 20
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_310

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".mp4"

    add-int/lit8 v6, v6, -0x5

    .line 21
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_310

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    const-string v7, ".cmf"

    .line 22
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_273

    goto/16 :goto_310

    :cond_273
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    const-string v7, ".og"

    .line 23
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_30d

    const-string v6, ".opus"

    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28b

    goto/16 :goto_30d

    :cond_28b
    const-string v6, ".ps"

    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_30a

    const-string v6, ".mpeg"

    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_30a

    const-string v6, ".mpg"

    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_30a

    const-string v6, ".m2p"

    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2ac

    goto :goto_30a

    :cond_2ac
    const-string v6, ".ts"

    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_307

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    const-string v7, ".ts"

    .line 30
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2c3

    goto :goto_307

    :cond_2c3
    const-string v6, ".wav"

    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_304

    const-string v6, ".wave"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d4

    goto :goto_304

    :cond_2d4
    const-string v6, ".vtt"

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_301

    const-string v6, ".webvtt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e5

    goto :goto_301

    :cond_2e5
    const-string v6, ".jpg"

    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31b

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f6

    goto :goto_31b

    :cond_2f6
    const-string v6, ".avi"

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1af

    const/16 v10, 0x10

    goto :goto_31b

    :cond_301
    :goto_301
    const/16 v10, 0xd

    goto :goto_31b

    :cond_304
    :goto_304
    const/16 v10, 0xc

    goto :goto_31b

    :cond_307
    :goto_307
    const/16 v10, 0xb

    goto :goto_31b

    :cond_30a
    :goto_30a
    const/16 v10, 0xa

    goto :goto_31b

    :cond_30d
    :goto_30d
    const/16 v10, 0x9

    goto :goto_31b

    :cond_310
    :goto_310
    const/16 v10, 0x8

    goto :goto_31b

    :cond_313
    :goto_313
    const/4 v10, 0x6

    goto :goto_31b

    :cond_315
    :goto_315
    const/16 v10, 0xf

    goto :goto_31b

    :cond_318
    :goto_318
    const/4 v10, 0x2

    goto :goto_31b

    :cond_31a
    :goto_31a
    const/4 v10, 0x0

    :cond_31b
    :goto_31b
    if-eq v10, v3, :cond_322

    if-eq v10, v4, :cond_322

    .line 35
    invoke-direct {v1, v10, v0}, Lcom/google/android/gms/internal/ads/zzzp;->b(ILjava/util/List;)V

    :cond_322
    sget-object v3, Lcom/google/android/gms/internal/ads/zzzp;->c:[I

    const/4 v5, 0x0

    :goto_325
    if-ge v5, v2, :cond_333

    .line 36
    aget v6, v3, v5

    if-eq v6, v4, :cond_330

    if-eq v6, v10, :cond_330

    .line 37
    invoke-direct {v1, v6, v0}, Lcom/google/android/gms/internal/ads/zzzp;->b(ILjava/util/List;)V

    :cond_330
    add-int/lit8 v5, v5, 0x1

    goto :goto_325

    .line 38
    :cond_333
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzzu;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzzu;
    :try_end_33f
    .catchall {:try_start_3 .. :try_end_33f} :catchall_341

    monitor-exit p0

    return-object v0

    :catchall_341
    move-exception v0

    monitor-exit p0

    goto :goto_345

    :goto_344
    throw v0

    :goto_345
    goto :goto_344

    :sswitch_data_346
    .sparse-switch
        -0x7e929daa -> :sswitch_16c
        -0x6315f78b -> :sswitch_161
        -0x6315f787 -> :sswitch_156
        -0x63118f53 -> :sswitch_14b
        -0x5fc6f775 -> :sswitch_141
        -0x58a7d764 -> :sswitch_136
        -0x4a681e4e -> :sswitch_12b
        -0x405dba54 -> :sswitch_120
        -0x3be2f26c -> :sswitch_115
        -0x17118226 -> :sswitch_109
        -0x2974308 -> :sswitch_fd
        0xd45707 -> :sswitch_f1
        0xb269698 -> :sswitch_e6
        0xb269699 -> :sswitch_db
        0xb26980d -> :sswitch_d0
        0xb26c538 -> :sswitch_c4
        0xb26cbd6 -> :sswitch_b8
        0xb26e933 -> :sswitch_ac
        0x4f62635d -> :sswitch_a0
        0x59976a2d -> :sswitch_95
        0x59ae0c65 -> :sswitch_8a
        0x59aeaa01 -> :sswitch_7f
        0x59b1cdba -> :sswitch_73
        0x59b1e81e -> :sswitch_67
        0x59b64a32 -> :sswitch_5b
        0x79909c15 -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_3b0
    .packed-switch 0x0
        :pswitch_1a3
        :pswitch_1a3
        :pswitch_1a3
        :pswitch_1a1
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19d
        :pswitch_19b
        :pswitch_198
        :pswitch_196
        :pswitch_196
        :pswitch_196
        :pswitch_196
        :pswitch_196
        :pswitch_194
        :pswitch_191
        :pswitch_191
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17f
        :pswitch_17c
    .end packed-switch
.end method

.method public final declared-synchronized zza()[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzzp;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzzl (com.google.android.gms.internal.ads.zzzl)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzzl;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzl;->a:Lcom/google/android/gms/internal/ads/zzzl;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/reflect/Constructor;
    .registers 6

    const-string v0, "androidx.media3.decoder.flac.FlacLibrary"

    .line 1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "isAvailable"

    .line 2
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "androidx.media3.decoder.flac.FlacExtractor"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ads/zzzu;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :cond_36
    return-object v4
.end method

###### Class com.google.android.gms.internal.ads.zzzm (com.google.android.gms.internal.ads.zzzm)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzzm;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzm;->a:Lcom/google/android/gms/internal/ads/zzzm;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/reflect/Constructor;
    .registers 3

    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ads/zzzu;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
