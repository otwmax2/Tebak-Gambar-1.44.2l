###### Class com.google.android.gms.internal.ads.zzaur (com.google.android.gms.internal.ads.zzaur)
.class public final Lcom/google/android/gms/internal/ads/zzaur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaug;

.field private final b:I

.field private c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaur;->b:I

    const/16 p1, 0x40

    if-gt p2, p1, :cond_b

    if-gez p2, :cond_d

    :cond_b
    const/16 p2, 0x40

    :cond_d
    if-gtz p3, :cond_13

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaur;->d:I

    goto :goto_15

    :cond_13
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaur;->d:I

    :goto_15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaup;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaup;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaur;->a:Lcom/google/android/gms/internal/ads/zzaug;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzauq;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzauq;-><init>(Lcom/google/android/gms/internal/ads/zzaur;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/HashSet;

    .line 2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 3
    :goto_12
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f6

    .line 4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzauf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzauf;->e()I

    move-result v5

    move-object/from16 v6, p1

    .line 5
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    sget-object v7, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v5, v7}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\n"

    .line 7
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 8
    array-length v7, v5

    if-nez v7, :cond_41

    goto/16 :goto_f2

    :cond_41
    const/4 v7, 0x0

    .line 9
    :goto_42
    array-length v8, v5

    if-ge v7, v8, :cond_f2

    .line 10
    aget-object v8, v5, v7

    const-string v9, "\'"

    .line 11
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_a7

    new-instance v9, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_57
    add-int/lit8 v13, v11, 0x2

    .line 13
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-gt v13, v14, :cond_9a

    .line 14
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-ne v14, v15, :cond_98

    add-int/lit8 v12, v11, -0x1

    .line 15
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    const/16 v14, 0x20

    if-eq v12, v14, :cond_94

    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v3, 0x73

    if-eq v15, v3, :cond_83

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v12, 0x53

    if-ne v3, v12, :cond_94

    .line 17
    :cond_83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v13, v3, :cond_8f

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v14, :cond_94

    .line 18
    :cond_8f
    invoke-virtual {v9, v11, v14}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v11, v13

    goto :goto_97

    .line 19
    :cond_94
    invoke-virtual {v9, v11, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_97
    const/4 v12, 0x1

    :cond_98
    add-int/2addr v11, v10

    goto :goto_57

    :cond_9a
    if-eqz v12, :cond_a1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a2

    :cond_a1
    const/4 v3, 0x0

    :goto_a2
    if-eqz v3, :cond_a7

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzaur;->c:Ljava/lang/String;

    move-object v8, v3

    .line 20
    :cond_a7
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzauk;->b(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 21
    array-length v8, v3

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzaur;->d:I

    if-ge v8, v9, :cond_b1

    goto :goto_ee

    :cond_b1
    const/4 v8, 0x0

    .line 22
    :goto_b2
    array-length v9, v3

    if-ge v8, v9, :cond_e5

    const-string v9, ""

    const/4 v10, 0x0

    :goto_b8
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzaur;->d:I

    if-ge v10, v11, :cond_d7

    add-int v11, v8, v10

    .line 23
    array-length v12, v3

    if-lt v11, v12, :cond_c2

    goto :goto_e5

    :cond_c2
    if-lez v10, :cond_ca

    const-string v12, " "

    .line 24
    invoke-virtual {v9, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 25
    :cond_ca
    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_b8

    .line 26
    :cond_d7
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v9

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzaur;->b:I

    if-ge v9, v10, :cond_f6

    add-int/lit8 v8, v8, 0x1

    goto :goto_b2

    .line 28
    :cond_e5
    :goto_e5
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzaur;->b:I

    if-lt v3, v8, :cond_ee

    goto :goto_f6

    :cond_ee
    :goto_ee
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_42

    :cond_f2
    :goto_f2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    :cond_f6
    :goto_f6
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaui;

    .line 29
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaui;-><init>()V

    .line 30
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ff
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_10b
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaur;->a:Lcom/google/android/gms/internal/ads/zzaug;

    .line 31
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzaug;->b(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaui;->b:Landroid/util/Base64OutputStream;

    .line 32
    invoke-virtual {v4, v2}, Landroid/util/Base64OutputStream;->write([B)V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_116} :catch_117

    goto :goto_ff

    :catch_117
    move-exception v0

    const-string v2, "Error while writing hash to byteStream"

    .line 33
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_11d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaui;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
