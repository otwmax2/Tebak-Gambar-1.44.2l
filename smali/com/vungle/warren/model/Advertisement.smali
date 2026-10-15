###### Class com.vungle.warren.model.Advertisement (com.vungle.warren.model.Advertisement)
.class public Lcom/vungle/warren/model/Advertisement;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/Advertisement$Checkpoint;,
        Lcom/vungle/warren/model/Advertisement$State;,
        Lcom/vungle/warren/model/Advertisement$CacheKey;,
        Lcom/vungle/warren/model/Advertisement$Orientation;,
        Lcom/vungle/warren/model/Advertisement$AdType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/vungle/warren/model/Advertisement;",
        ">;"
    }
.end annotation


# static fields
.field public static final DONE:I = 0x3

.field public static final ERROR:I = 0x4

.field public static final INVALID:I = 0x5

.field public static final KEY_POSTROLL:Ljava/lang/String; = "postroll"

.field public static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final KEY_VIDEO:Ljava/lang/String; = "video"

.field public static final LANDSCAPE:I = 0x1

.field public static final NEW:I = 0x0

.field public static final PORTRAIT:I = 0x0

.field public static final READY:I = 0x1

.field public static final TYPE_VUNGLE_LOCAL:I = 0x0

.field public static final TYPE_VUNGLE_MRAID:I = 0x1

.field public static final VIEWING:I = 0x2

.field private static final d0:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e0:[Ljava/lang/String;


# instance fields
.field A:Ljava/lang/String;

.field B:I

.field C:I

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Z

.field G:Z

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Lcom/vungle/warren/AdConfig;

.field K:I

.field L:Ljava/lang/String;

.field M:Ljava/lang/String;

.field N:Ljava/lang/String;

.field O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field S:Ljava/lang/String;

.field T:Ljava/lang/String;

.field U:Z

.field V:Ljava/lang/String;

.field W:Z

.field X:Ljava/lang/String;

.field Y:Ljava/lang/String;

.field Z:I

.field a0:Ljava/lang/String;

.field public adRequestStartTime:J

.field public assetDownloadDuration:J

.field public assetDownloadStartTime:J

.field public assetsFullyDownloaded:Z

.field b0:J

.field c0:J

.field private o:Lcom/google/gson/f;

.field p:I
    .annotation build Lcom/vungle/warren/model/Advertisement$AdType;
    .end annotation
.end field

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:J

.field t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation
.end field

.field u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field v:I

.field w:Ljava/lang/String;

.field x:I

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "play_percentage"

    const-string v1, "checkpoint.0"

    const-string v2, "checkpoint.25"

    const-string v3, "checkpoint.50"

    const-string v4, "checkpoint.75"

    const-string v5, "checkpoint.100"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/model/Advertisement;->d0:Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    sput-object v0, Lcom/vungle/warren/model/Advertisement;->e0:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->o:Lcom/google/gson/f;

    .line 3
    new-instance v0, Lc7/h;

    invoke-direct {v0}, Lc7/h;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->G:Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->P:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->Q:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->R:Ljava/util/Map;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->Z:I

    .line 9
    iput-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/o;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->o:Lcom/google/gson/f;

    .line 12
    new-instance v0, Lc7/h;

    invoke-direct {v0}, Lc7/h;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->G:Z

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/model/Advertisement;->P:Ljava/util/Map;

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/model/Advertisement;->Q:Ljava/util/Map;

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/model/Advertisement;->R:Ljava/util/Map;

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->Z:I

    .line 18
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    const-string v2, "ad_markup"

    .line 19
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_589

    .line 20
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object p1

    const-string v2, "adType"

    .line 21
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_581

    .line 22
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "vungle_local"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "url"

    const-string v6, ""

    if-nez v3, :cond_1d4

    const-string v3, "vungle_mraid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 24
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    .line 25
    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    const-string v2, "templateSettings"

    .line 26
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 27
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->O:Ljava/util/Map;

    .line 28
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v2

    const-string v3, "normal_replacements"

    .line 29
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 30
    invoke-virtual {v2, v3}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/google/gson/o;->y()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a6

    goto :goto_8d

    .line 33
    :cond_a6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/l;

    invoke-virtual {v8}, Lcom/google/gson/l;->q()Z

    move-result v8

    if-eqz v8, :cond_b9

    goto :goto_c4

    :cond_b9
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/l;

    invoke-virtual {v8}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v8

    goto :goto_c5

    :cond_c4
    :goto_c4
    move-object v8, v4

    .line 34
    :goto_c5
    iget-object v9, p0, Lcom/vungle/warren/model/Advertisement;->O:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    :cond_cf
    const-string v3, "cacheable_replacements"

    .line 35
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_160

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/gson/o;->y()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v6

    :cond_e4
    :goto_e4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_161

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_fd

    goto :goto_e4

    .line 39
    :cond_fd
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_104

    goto :goto_e4

    .line 40
    :cond_104
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/l;

    invoke-static {v8, v5}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 41
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/l;

    const-string v9, "extension"

    invoke-static {v8, v9}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 42
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/l;

    invoke-virtual {v8}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/l;

    invoke-virtual {v10}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v9

    .line 44
    iget-object v10, p0, Lcom/vungle/warren/model/Advertisement;->Q:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    new-instance v12, Landroid/util/Pair;

    invoke-direct {v12, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "MAIN_VIDEO"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e4

    move-object v3, v8

    goto :goto_e4

    :cond_160
    move-object v3, v6

    :cond_161
    const-string v2, "templateId"

    .line 46
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a8

    .line 47
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->S:Ljava/lang/String;

    const-string v2, "template_type"

    .line 48
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a0

    .line 49
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->T:Ljava/lang/String;

    const-string v2, "templateURL"

    .line 50
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_198

    .line 51
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->N:Ljava/lang/String;

    goto :goto_208

    .line 52
    :cond_198
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Template URL missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Template Type missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1a8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing templateID!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing template adConfig!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1b8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Ad Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "! Please add this ad type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1d4
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    const-string v2, "postBundle"

    .line 58
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 59
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e8

    :cond_1e7
    move-object v2, v6

    :goto_1e8
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    .line 60
    invoke-static {p1, v5}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 61
    invoke-virtual {p1, v5}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1fb

    :cond_1fa
    move-object v3, v6

    .line 62
    :goto_1fb
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->O:Ljava/util/Map;

    .line 63
    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->N:Ljava/lang/String;

    .line 64
    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->S:Ljava/lang/String;

    .line 65
    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->T:Ljava/lang/String;

    .line 66
    :goto_208
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_211

    .line 67
    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    goto :goto_213

    .line 68
    :cond_211
    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    :goto_213
    const-string v2, "id"

    .line 69
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_579

    .line 70
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    const-string v2, "campaign"

    .line 71
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_571

    .line 72
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->w:Ljava/lang/String;

    const-string v2, "app_id"

    .line 73
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_569

    .line 74
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->r:Ljava/lang/String;

    const-string v2, "expiry"

    .line 75
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_276

    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/l;->q()Z

    move-result v3

    if-nez v3, :cond_276

    .line 76
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->n()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v5, v2, v9

    if-lez v5, :cond_26e

    .line 77
    iput-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->s:J

    goto :goto_27d

    .line 78
    :cond_26e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v7

    iput-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->s:J

    goto :goto_27d

    .line 79
    :cond_276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v7

    iput-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->s:J

    :goto_27d
    const-string v2, "tpat"

    .line 80
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_371

    .line 81
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v2

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    .line 83
    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    if-eqz v3, :cond_2cf

    if-ne v3, v0, :cond_2c7

    const/4 v3, 0x0

    :goto_298
    const/4 v5, 0x5

    if-ge v3, v5, :cond_305

    mul-int/lit8 v5, v3, 0x19

    .line 84
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "checkpoint.%d"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-static {v2, v7}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2be

    .line 86
    new-instance v8, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v2, v7}, Lcom/google/gson/o;->B(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v7

    int-to-byte v5, v5

    invoke-direct {v8, v7, v5}, Lcom/vungle/warren/model/Advertisement$Checkpoint;-><init>(Lcom/google/gson/i;B)V

    goto :goto_2bf

    :cond_2be
    move-object v8, v4

    .line 87
    :goto_2bf
    iget-object v5, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    invoke-interface {v5, v3, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_298

    .line 88
    :cond_2c7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Ad Type!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2cf
    const-string v3, "play_percentage"

    .line 89
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_305

    const-string v3, "play_percentage"

    .line 90
    invoke-virtual {v2, v3}, Lcom/google/gson/o;->B(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    const/4 v5, 0x0

    .line 91
    :goto_2de
    invoke-virtual {v3}, Lcom/google/gson/i;->size()I

    move-result v7

    if-ge v5, v7, :cond_300

    .line 92
    invoke-virtual {v3, v5}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v7

    if-nez v7, :cond_2eb

    goto :goto_2fd

    .line 93
    :cond_2eb
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    new-instance v8, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v3, v5}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/vungle/warren/model/Advertisement$Checkpoint;-><init>(Lcom/google/gson/o;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2fd
    add-int/lit8 v5, v5, 0x1

    goto :goto_2de

    .line 94
    :cond_300
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 95
    :cond_305
    new-instance v3, Ljava/util/TreeSet;

    invoke-virtual {v2}, Lcom/google/gson/o;->H()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    const-string v5, "moat"

    .line 96
    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 97
    sget-object v5, Lcom/vungle/warren/model/Advertisement;->d0:Ljava/util/Collection;

    invoke-interface {v3, v5}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 98
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_378

    .line 99
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_322
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_378

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v5}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/l;->k()Lcom/google/gson/i;

    move-result-object v7

    .line 101
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 102
    :goto_33c
    invoke-virtual {v7}, Lcom/google/gson/i;->size()I

    move-result v10

    if-ge v9, v10, :cond_36b

    .line 103
    invoke-virtual {v7, v9}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v10

    if-eqz v10, :cond_365

    invoke-virtual {v7, v9}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/l;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "null"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_359

    goto :goto_365

    .line 104
    :cond_359
    invoke-virtual {v7, v9}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_368

    .line 105
    :cond_365
    :goto_365
    invoke-virtual {v8, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_368
    add-int/lit8 v9, v9, 0x1

    goto :goto_33c

    .line 106
    :cond_36b
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_322

    .line 107
    :cond_371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    :cond_378
    const-string v2, "delay"

    .line 108
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38d

    const-string v2, "delay"

    .line 109
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->j()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->v:I

    goto :goto_38f

    .line 110
    :cond_38d
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->v:I

    :goto_38f
    const-string v2, "showClose"

    .line 111
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a4

    const-string v2, "showClose"

    .line 112
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->j()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->x:I

    goto :goto_3a6

    .line 113
    :cond_3a4
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->x:I

    :goto_3a6
    const-string v2, "showCloseIncentivized"

    .line 114
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3bb

    const-string v2, "showCloseIncentivized"

    .line 115
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->j()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->y:I

    goto :goto_3bd

    .line 116
    :cond_3bb
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->y:I

    :goto_3bd
    const-string v2, "countdown"

    .line 117
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d2

    const-string v2, "countdown"

    .line 118
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->j()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->z:I

    goto :goto_3d4

    .line 119
    :cond_3d2
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->z:I

    :goto_3d4
    const-string v2, "videoWidth"

    .line 120
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_561

    const-string v2, "videoWidth"

    .line 121
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->j()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->B:I

    const-string v2, "videoHeight"

    .line 122
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_559

    const-string v2, "videoHeight"

    .line 123
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->j()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->C:I

    const-string v2, "md5"

    .line 124
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_411

    const-string v2, "md5"

    .line 125
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->D:Ljava/lang/String;

    goto :goto_413

    .line 126
    :cond_411
    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->D:Ljava/lang/String;

    :goto_413
    const-string v2, "cta_overlay"

    .line 127
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45f

    const-string v2, "cta_overlay"

    .line 128
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v2

    const-string v3, "enabled"

    .line 129
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_436

    const-string v3, "enabled"

    .line 130
    invoke-virtual {v2, v3}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/l;->c()Z

    move-result v3

    iput-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->F:Z

    goto :goto_438

    .line 131
    :cond_436
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->F:Z

    :goto_438
    const-string v3, "click_area"

    .line 132
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_461

    invoke-virtual {v2, v3}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_461

    invoke-virtual {v2, v3}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->g()D

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmpl-double v5, v2, v7

    if-nez v5, :cond_461

    .line 133
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->G:Z

    goto :goto_461

    .line 134
    :cond_45f
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->F:Z

    :cond_461
    :goto_461
    const-string v2, "callToActionDest"

    .line 135
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_474

    const-string v2, "callToActionDest"

    .line 136
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    goto :goto_475

    :cond_474
    move-object v2, v6

    :goto_475
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->H:Ljava/lang/String;

    const-string v2, "callToActionUrl"

    .line 137
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48a

    const-string v2, "callToActionUrl"

    .line 138
    invoke-virtual {p1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    goto :goto_48b

    :cond_48a
    move-object v2, v6

    :goto_48b
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->I:Ljava/lang/String;

    const-string v2, "retryCount"

    .line 139
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a2

    const-string v0, "retryCount"

    .line 140
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->j()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->K:I

    goto :goto_4a4

    .line 141
    :cond_4a2
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->K:I

    :goto_4a4
    const-string v0, "ad_token"

    .line 142
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_551

    const-string v0, "ad_token"

    .line 143
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->L:Ljava/lang/String;

    const-string v0, "video_object_id"

    .line 144
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4cd

    const-string v0, "video_object_id"

    .line 145
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->M:Ljava/lang/String;

    goto :goto_4cf

    .line 146
    :cond_4cd
    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->M:Ljava/lang/String;

    :goto_4cf
    const-string v0, "requires_sideloading"

    .line 147
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e4

    const-string v0, "requires_sideloading"

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->W:Z

    goto :goto_4e6

    .line 149
    :cond_4e4
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->W:Z

    :goto_4e6
    const-string v0, "ad_market_id"

    .line 150
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4fb

    const-string v0, "ad_market_id"

    .line 151
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->X:Ljava/lang/String;

    goto :goto_4fd

    .line 152
    :cond_4fb
    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->X:Ljava/lang/String;

    :goto_4fd
    const-string v0, "bid_token"

    .line 153
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_512

    const-string v0, "bid_token"

    .line 154
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->Y:Ljava/lang/String;

    goto :goto_514

    .line 155
    :cond_512
    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->Y:Ljava/lang/String;

    :goto_514
    const-string v0, "timestamp"

    .line 156
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_529

    const-string v0, "timestamp"

    .line 157
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->n()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->c0:J

    goto :goto_52d

    :cond_529
    const-wide/16 v2, 0x1

    .line 158
    iput-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->c0:J

    :goto_52d
    const-string v0, "viewability"

    .line 159
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->getAsObject(Lcom/google/gson/l;Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object p1

    const-string v0, "om"

    .line 160
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->getAsObject(Lcom/google/gson/l;Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object p1

    const-string v0, "is_enabled"

    .line 161
    invoke-static {p1, v0, v1}, Lcom/vungle/warren/model/JsonUtil;->getAsBoolean(Lcom/google/gson/l;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->U:Z

    const-string v0, "extra_vast"

    .line 162
    invoke-static {p1, v0, v4}, Lcom/vungle/warren/model/JsonUtil;->getAsString(Lcom/google/gson/l;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->V:Ljava/lang/String;

    .line 163
    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->J:Lcom/vungle/warren/AdConfig;

    return-void

    .line 164
    :cond_551
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AdToken missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_559
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing video height!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_561
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing video width!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_569
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing app Id, cannot process advertisement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_571
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing campaign information, cannot process advertisement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_579
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing identifier, cannot process advertisement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_581
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Advertisement did not contain an adType!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_589
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON does not contain ad markup!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_592

    :goto_591
    throw p1

    :goto_592
    goto :goto_591
.end method

.method private f(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->S:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Lcom/vungle/warren/model/Advertisement;)I
    .registers 3

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 2
    :cond_4
    iget-object p1, p1, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    if-nez p1, :cond_f

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    return v0

    .line 4
    :cond_f
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_15
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/Advertisement;->compareTo(Lcom/vungle/warren/model/Advertisement;)I

    move-result p1

    return p1
.end method

.method public configure(Lcom/vungle/warren/AdConfig;)V
    .registers 2

    if-nez p1, :cond_a

    .line 1
    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->J:Lcom/vungle/warren/AdConfig;

    goto :goto_c

    .line 2
    :cond_a
    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->J:Lcom/vungle/warren/AdConfig;

    :goto_c
    return-void
.end method

.method public createMRAIDArgs()Lcom/google/gson/o;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->O:Ljava/util/Map;

    if-eqz v0, :cond_a2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->O:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->Q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 5
    :cond_31
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->P:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->P:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    :cond_3e
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->R:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 8
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->R:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4b
    const-string v1, "START_MUTED"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_6d

    .line 10
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_68

    goto :goto_6a

    :cond_68
    const-string v3, "false"

    :goto_6a
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_6d
    new-instance v1, Lcom/google/gson/o;

    invoke-direct {v1}, Lcom/google/gson/o;-><init>()V

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 14
    :cond_96
    invoke-virtual {v1}, Lcom/google/gson/l;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Advertisement"

    const-string v3, "mraid_args"

    invoke-static {v4, v2, v3, v0}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 15
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Advertisement does not have MRAID Arguments!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_ab

    :goto_aa
    throw v0

    :goto_ab
    goto :goto_aa
.end method

.method e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/vungle/warren/model/Advertisement;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/vungle/warren/model/Advertisement;

    .line 3
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->p:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    if-eq v1, v3, :cond_13

    return v2

    .line 4
    :cond_13
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->v:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->v:I

    if-eq v1, v3, :cond_1a

    return v2

    .line 5
    :cond_1a
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->x:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->x:I

    if-eq v1, v3, :cond_21

    return v2

    .line 6
    :cond_21
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->y:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->y:I

    if-eq v1, v3, :cond_28

    return v2

    .line 7
    :cond_28
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->z:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->z:I

    if-eq v1, v3, :cond_2f

    return v2

    .line 8
    :cond_2f
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->B:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->B:I

    if-eq v1, v3, :cond_36

    return v2

    .line 9
    :cond_36
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->C:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->C:I

    if-eq v1, v3, :cond_3d

    return v2

    .line 10
    :cond_3d
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->F:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->F:Z

    if-eq v1, v3, :cond_44

    return v2

    .line 11
    :cond_44
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->G:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->G:Z

    if-eq v1, v3, :cond_4b

    return v2

    .line 12
    :cond_4b
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->K:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->K:I

    if-eq v1, v3, :cond_52

    return v2

    .line 13
    :cond_52
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->U:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->U:Z

    if-eq v1, v3, :cond_59

    return v2

    .line 14
    :cond_59
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->W:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->W:Z

    if-eq v1, v3, :cond_60

    return v2

    .line 15
    :cond_60
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->Z:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->Z:I

    if-eq v1, v3, :cond_67

    return v2

    .line 16
    :cond_67
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    if-eqz v1, :cond_13d

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    if-nez v3, :cond_71

    goto/16 :goto_13d

    .line 17
    :cond_71
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    return v2

    .line 18
    :cond_78
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->w:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    return v2

    .line 19
    :cond_83
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    return v2

    .line 20
    :cond_8e
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->D:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->D:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    return v2

    .line 21
    :cond_99
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    return v2

    .line 22
    :cond_a4
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->H:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    return v2

    .line 23
    :cond_af
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->I:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->I:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ba

    return v2

    .line 24
    :cond_ba
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->L:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->L:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c5

    return v2

    .line 25
    :cond_c5
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->M:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->M:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    return v2

    .line 26
    :cond_d0
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->V:Ljava/lang/String;

    if-eqz v1, :cond_dd

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->V:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e2

    goto :goto_e1

    :cond_dd
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->V:Ljava/lang/String;

    if-eqz v1, :cond_e2

    :goto_e1
    return v2

    .line 27
    :cond_e2
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->X:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->X:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    return v2

    .line 28
    :cond_ed
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->Y:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->Y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f8

    return v2

    .line 29
    :cond_f8
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_107

    return v2

    :cond_107
    const/4 v1, 0x0

    .line 30
    :goto_108
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_128

    .line 31
    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    iget-object v4, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_125

    return v2

    :cond_125
    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    .line 32
    :cond_128
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_133

    return v2

    .line 33
    :cond_133
    iget-wide v3, p1, Lcom/vungle/warren/model/Advertisement;->c0:J

    iget-wide v5, p0, Lcom/vungle/warren/model/Advertisement;->c0:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_13c

    return v2

    :cond_13c
    return v0

    :cond_13d
    :goto_13d
    return v2
.end method

.method public getAdConfig()Lcom/vungle/warren/AdConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->J:Lcom/vungle/warren/AdConfig;

    return-object v0
.end method

.method public getAdMarketId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getAdToken()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .registers 2
    .annotation build Lcom/vungle/warren/model/Advertisement$AdType;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    return v0
.end method

.method public getAdvertiserAppId()Ljava/lang/String;
    .registers 6

    const-string v0, "app_id"

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_33

    .line 4
    :try_start_13
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    move-object v1, v4

    goto :goto_33

    :cond_25
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_29} :catch_2b

    move-object v1, v0

    goto :goto_33

    :catch_2b
    move-exception v0

    const-string v2, "Advertisement"

    const-string v3, "JsonException : "

    .line 6
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_33
    :goto_33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v1, "unknown"

    :cond_3b
    return-object v1
.end method

.method public getAppID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetDownloadDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    return-wide v0
.end method

.method public getBidToken()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public getCTAURL(Z)Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    if-eqz v0, :cond_23

    const/4 p1, 0x1

    if-ne v0, p1, :cond_a

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->I:Ljava/lang/String;

    return-object p1

    .line 3
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AdType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    if-eqz p1, :cond_28

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->I:Ljava/lang/String;

    goto :goto_2a

    :cond_28
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->H:Ljava/lang/String;

    :goto_2a
    return-object p1
.end method

.method public getCampaign()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "\\|"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_18

    const/4 v1, 0x0

    .line 5
    aget-object v0, v0, v1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 6
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "unknown"

    :cond_21
    return-object v0
.end method

.method public getCheckpoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "\\|"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_18

    const/4 v1, 0x1

    .line 5
    aget-object v0, v0, v1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 6
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "unknown"

    :cond_21
    return-object v0
.end method

.method public getCtaClickArea()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->G:Z

    return v0
.end method

.method public getDownloadableUrls()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->N:Ljava/lang/String;

    const-string v2, "template"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->Q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v2}, Lcom/vungle/warren/model/Advertisement;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v3, v3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 9
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advertisement created without adType!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_4a
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 12
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    const-string v2, "postroll"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    return-object v0
.end method

.method public getExpireTime()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->s:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getOmEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->U:Z

    return v0
.end method

.method public getOmExtraVast()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .registers 3
    .annotation build Lcom/vungle/warren/model/Advertisement$Orientation;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->B:I

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->C:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->a0:Ljava/lang/String;

    return-object v0
.end method

.method public getServerRequestTimestamp()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->c0:J

    return-wide v0
.end method

.method public getShowCloseDelay(Z)I
    .registers 2

    if-eqz p1, :cond_7

    .line 1
    iget p1, p0, Lcom/vungle/warren/model/Advertisement;->y:I

    :goto_4
    mul-int/lit16 p1, p1, 0x3e8

    return p1

    .line 2
    :cond_7
    iget p1, p0, Lcom/vungle/warren/model/Advertisement;->x:I

    goto :goto_4
.end method

.method public getState()I
    .registers 2
    .annotation build Lcom/vungle/warren/model/Advertisement$State;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->Z:I

    return v0
.end method

.method public getTemplateType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown TPAT Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3
    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    const-string v3, "#getTpatUrls"

    if-eqz v2, :cond_77

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6f

    const-string v2, "checkpoint"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 5
    sget-object v0, Lcom/vungle/warren/model/Advertisement;->e0:[Ljava/lang/String;

    const-string v1, "\\."

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    div-int/lit8 p1, p1, 0x19

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    if-eqz p1, :cond_48

    .line 8
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object v0

    :cond_48
    return-object v0

    :cond_49
    if-nez v1, :cond_66

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/vungle/warren/model/Advertisement;->e0:[Ljava/lang/String;

    return-object p1

    .line 11
    :cond_66
    sget-object p1, Lcom/vungle/warren/model/Advertisement;->e0:[Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 12
    :cond_6f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown Advertisement Type!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_77
    if-nez v1, :cond_94

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/vungle/warren/model/Advertisement;->e0:[Ljava/lang/String;

    return-object p1

    .line 15
    :cond_94
    sget-object p1, Lcom/vungle/warren/model/Advertisement;->e0:[Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getTtDownload()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->b0:J

    return-wide v0
.end method

.method public hasPostroll()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->v:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->B:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->C:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->D:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->F:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->G:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->H:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->I:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->K:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->L:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->M:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->U:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->V:Ljava/lang/String;

    if-eqz v1, :cond_a2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a3

    :cond_a2
    const/4 v1, 0x0

    :goto_a3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->W:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->X:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->Y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->Z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    .line 28
    iget-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->c0:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public isCtaOverlayEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->F:Z

    return v0
.end method

.method public isRequiresNonMarketInstall()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->W:Z

    return v0
.end method

.method public setAdRequestStartTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    return-void
.end method

.method public setAssetDownloadStartTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    return-void
.end method

.method public setFinishedDownloadingTime(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    .line 2
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/vungle/warren/model/Advertisement;->b0:J

    return-void
.end method

.method public setIncentivizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->R:Ljava/util/Map;

    const-string v1, "INCENTIVIZED_TITLE_TEXT"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->R:Ljava/util/Map;

    const-string v0, "INCENTIVIZED_BODY_TEXT"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->R:Ljava/util/Map;

    const-string p2, "INCENTIVIZED_CONTINUE_TEXT"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_27
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 8
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->R:Ljava/util/Map;

    const-string p2, "INCENTIVIZED_CLOSE_TEXT"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-void
.end method

.method public setMraidAssetDir(Ljava/io/File;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-direct {p0, v2}, Lcom/vungle/warren/model/Advertisement;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3, v3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 7
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->P:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_55
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->a0:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/model/Advertisement$State;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/vungle/warren/model/Advertisement;->Z:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advertisement{adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expireTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", checkpoints="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->o:Lcom/google/gson/f;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->t:Ljava/util/List;

    sget-object v4, Lcom/vungle/warren/model/AdvertisementDBAdapter;->e:Ljava/lang/reflect/Type;

    .line 2
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dynamicEventsAndUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->o:Lcom/google/gson/f;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->u:Ljava/util/Map;

    sget-object v4, Lcom/vungle/warren/model/AdvertisementDBAdapter;->f:Ljava/lang/reflect/Type;

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->v:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", campaign=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showCloseDelay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showCloseIncentivized="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", countdown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->C:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->D:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", postrollBundleUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctaOverlayEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->F:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ctaClickArea="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->G:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ctaDestinationUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctaUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adConfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->J:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->K:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoIdentifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->M:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->N:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateSettings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->O:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mraidFiles="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->P:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cacheableAssets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->Q:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", templateId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->S:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", enableOm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->U:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", oMSDKExtraVast=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->V:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requiresNonMarketInstall="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->W:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", adMarketId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->X:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bidToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->Y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->Z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", assetDownloadStartTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", assetDownloadDuration=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adRequestStartTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", requestTimestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/model/Advertisement;->c0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.model.Advertisement.AdType (com.vungle.warren.model.Advertisement$AdType)
.class public interface abstract annotation Lcom/vungle/warren/model/Advertisement$AdType;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Advertisement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AdType"
.end annotation

###### Class com.vungle.warren.model.Advertisement.CacheKey (com.vungle.warren.model.Advertisement$CacheKey)
.class public interface abstract annotation Lcom/vungle/warren/model/Advertisement$CacheKey;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Advertisement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CacheKey"
.end annotation

###### Class com.vungle.warren.model.Advertisement.Checkpoint (com.vungle.warren.model.Advertisement$Checkpoint)
.class public Lcom/vungle/warren/model/Advertisement$Checkpoint;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Advertisement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checkpoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
        ">;"
    }
.end annotation


# instance fields
.field private o:B
    .annotation runtime Lb7/c;
        value = "percentage"
    .end annotation
.end field

.field private p:[Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "urls"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/i;B)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/google/gson/i;->size()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 15
    invoke-virtual {p1}, Lcom/google/gson/i;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    :goto_12
    invoke-virtual {p1}, Lcom/google/gson/i;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 17
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 18
    :cond_27
    iput-byte p2, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->o:B

    return-void

    .line 19
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty URLS!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_33

    :goto_32
    throw p1

    :goto_33
    goto :goto_32
.end method

.method public constructor <init>(Lcom/google/gson/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "checkpoint"

    .line 2
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->i()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->o:B

    const-string v0, "urls"

    .line 4
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->B(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/gson/i;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    :goto_30
    invoke-virtual {p1}, Lcom/google/gson/i;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {p1, v0}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/l;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_5a

    .line 9
    :cond_4d
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_60

    .line 10
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_63
    return-void

    .line 11
    :cond_64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Checkpoint missing reporting URL!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Checkpoint missing percentage!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_75

    :goto_74
    throw p1

    :goto_75
    goto :goto_74
.end method


# virtual methods
.method public compareTo(Lcom/vungle/warren/model/Advertisement$Checkpoint;)I
    .registers 3

    .line 2
    iget-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->o:B

    int-to-float v0, v0

    iget-byte p1, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->o:B

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->compareTo(Lcom/vungle/warren/model/Advertisement$Checkpoint;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    .line 3
    iget-byte v1, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->o:B

    iget-byte v3, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->o:B

    if-eq v1, v3, :cond_13

    return v2

    .line 4
    :cond_13
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    const/4 v1, 0x0

    .line 5
    :goto_1d
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_32

    .line 6
    iget-object v4, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_32
    return v0
.end method

.method public getPercentage()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->o:B

    return v0
.end method

.method public getUrls()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->o:B

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->p:[Ljava/lang/String;

    array-length v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.vungle.warren.model.Advertisement.Orientation (com.vungle.warren.model.Advertisement$Orientation)
.class public interface abstract annotation Lcom/vungle/warren/model/Advertisement$Orientation;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Advertisement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Orientation"
.end annotation

###### Class com.vungle.warren.model.Advertisement.State (com.vungle.warren.model.Advertisement$State)
.class public interface abstract annotation Lcom/vungle/warren/model/Advertisement$State;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Advertisement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "State"
.end annotation
