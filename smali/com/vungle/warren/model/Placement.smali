###### Class com.vungle.warren.model.Placement (com.vungle.warren.model.Placement)
.class public Lcom/vungle/warren/model/Placement;
.super Ljava/lang/Object;
.source "Placement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/Placement$PlacementAdType;
    }
.end annotation


# static fields
.field public static final INVALID_INTEGER_VALUE:I = -0x80000000

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_DEPRECTAED_TEMPLATE:I = 0x2

.field public static final TYPE_VUNGLE_BANNER:I = 0x1

.field public static final TYPE_VUNGLE_MREC:I = 0x3


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:J

.field e:I

.field f:I

.field g:Z

.field h:Z

.field i:I
    .annotation build Lcom/vungle/warren/model/Placement$PlacementAdType;
    .end annotation
.end field

.field protected j:Lcom/vungle/warren/AdConfig$AdSize;

.field protected k:Lcom/vungle/warren/AdConfig$AdSize;

.field l:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/vungle/warren/model/Placement;->i:I

    .line 10
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object v0, p0, Lcom/vungle/warren/model/Placement;->k:Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/o;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/vungle/warren/model/Placement;->i:I

    .line 13
    sget-object v1, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object v1, p0, Lcom/vungle/warren/model/Placement;->k:Lcom/vungle/warren/AdConfig$AdSize;

    const-string v1, "reference_id"

    .line 14
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 15
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/warren/model/Placement;->a:Ljava/lang/String;

    const-string v1, "is_auto_cached"

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    invoke-virtual {p1, v1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/l;->c()Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    iput-boolean v1, p0, Lcom/vungle/warren/model/Placement;->b:Z

    const-string v1, "cache_priority"

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v2

    const v4, 0x7fffffff

    if-eqz v2, :cond_55

    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->b:Z

    if-eqz v2, :cond_55

    .line 18
    :try_start_43
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/l;->j()I

    move-result v1

    iput v1, p0, Lcom/vungle/warren/model/Placement;->f:I

    if-ge v1, v3, :cond_57

    .line 19
    iput v4, p0, Lcom/vungle/warren/model/Placement;->f:I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_51} :catch_52

    goto :goto_57

    .line 20
    :catch_52
    iput v4, p0, Lcom/vungle/warren/model/Placement;->f:I

    goto :goto_57

    .line 21
    :cond_55
    iput v4, p0, Lcom/vungle/warren/model/Placement;->f:I

    :cond_57
    :goto_57
    const-string v1, "is_incentivized"

    .line 22
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {p1, v1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/l;->c()Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 v1, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x0

    :goto_6c
    iput-boolean v1, p0, Lcom/vungle/warren/model/Placement;->c:Z

    const-string v1, "ad_refresh_duration"

    .line 23
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-virtual {p1, v1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/l;->j()I

    move-result v1

    goto :goto_80

    :cond_7f
    const/4 v1, 0x0

    :goto_80
    iput v1, p0, Lcom/vungle/warren/model/Placement;->e:I

    const-string v1, "header_bidding"

    .line 24
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-virtual {p1, v1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/l;->c()Z

    move-result v1

    if-eqz v1, :cond_96

    const/4 v1, 0x1

    goto :goto_97

    :cond_96
    const/4 v1, 0x0

    :goto_97
    iput-boolean v1, p0, Lcom/vungle/warren/model/Placement;->g:Z

    const-string v1, "max_hb_cache"

    .line 25
    invoke-static {p1, v1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const/high16 v2, -0x80000000

    .line 26
    :try_start_a3
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/l;->j()I

    move-result v1

    iput v1, p0, Lcom/vungle/warren/model/Placement;->l:I

    if-lez v1, :cond_b0

    goto :goto_b2

    :cond_b0
    const/high16 v1, -0x80000000

    .line 27
    :goto_b2
    iput v1, p0, Lcom/vungle/warren/model/Placement;->l:I
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_b4} :catch_b5

    goto :goto_cb

    :catch_b5
    move-exception v1

    new-array v4, v3, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "Can\'t read int value from JSON: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Placement"

    .line 29
    invoke-static {v3, v4, v4, v1}, Lcom/vungle/warren/VungleLogger;->error(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput v2, p0, Lcom/vungle/warren/model/Placement;->l:I

    :cond_cb
    :goto_cb
    const-string v1, "supported_template_types"

    .line 31
    invoke-static {p1, v1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x2

    const-string v5, "banner"

    if-eqz v2, :cond_13f

    .line 32
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->B(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/gson/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/l;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SupportedTemplatesTypes : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "PlacementModel"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v1}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 36
    iput v3, p0, Lcom/vungle/warren/model/Placement;->i:I

    goto :goto_13f

    .line 37
    :cond_111
    invoke-virtual {v1}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    const-string v6, "flexfeed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13d

    .line 38
    invoke-virtual {v1}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v2

    const-string v6, "flexview"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    goto :goto_13d

    .line 39
    :cond_12a
    invoke-virtual {v1}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mrec"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    const/4 v1, 0x3

    .line 40
    iput v1, p0, Lcom/vungle/warren/model/Placement;->i:I

    goto :goto_13f

    .line 41
    :cond_13a
    iput v0, p0, Lcom/vungle/warren/model/Placement;->i:I

    goto :goto_13f

    .line 42
    :cond_13d
    :goto_13d
    iput v4, p0, Lcom/vungle/warren/model/Placement;->i:I

    :cond_13f
    :goto_13f
    const-string v1, "ad_size"

    .line 43
    invoke-static {p1, v1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_199

    iget v2, p0, Lcom/vungle/warren/model/Placement;->i:I

    if-ne v2, v3, :cond_199

    .line 44
    invoke-virtual {p0}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v2

    if-eqz v2, :cond_199

    .line 45
    invoke-virtual {p1, v1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1a4

    :goto_164
    const/4 v0, -0x1

    goto :goto_183

    :sswitch_166
    const-string v0, "banner_short"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16f

    goto :goto_164

    :cond_16f
    const/4 v0, 0x2

    goto :goto_183

    :sswitch_171
    const-string v0, "banner_leaderboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17a

    goto :goto_164

    :cond_17a
    const/4 v0, 0x1

    goto :goto_183

    :sswitch_17c
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_183

    goto :goto_164

    :cond_183
    :goto_183
    packed-switch v0, :pswitch_data_1b2

    .line 47
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object p1, p0, Lcom/vungle/warren/model/Placement;->k:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_199

    .line 48
    :pswitch_18b
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object p1, p0, Lcom/vungle/warren/model/Placement;->k:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_199

    .line 49
    :pswitch_190
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object p1, p0, Lcom/vungle/warren/model/Placement;->k:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_199

    .line 50
    :pswitch_195
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object p1, p0, Lcom/vungle/warren/model/Placement;->k:Lcom/vungle/warren/AdConfig$AdSize;

    :cond_199
    :goto_199
    return-void

    .line 51
    :cond_19a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing placement reference ID, cannot use placement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1a3

    :goto_1a2
    throw p1

    :goto_1a3
    goto :goto_1a2

    :sswitch_data_1a4
    .sparse-switch
        -0x533a80d4 -> :sswitch_17c
        0x213fe2ea -> :sswitch_171
        0x3c9e55a9 -> :sswitch_166
    .end sparse-switch

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_195
        :pswitch_190
        :pswitch_18b
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/vungle/warren/model/Placement;->i:I

    .line 3
    sget-object v1, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object v1, p0, Lcom/vungle/warren/model/Placement;->k:Lcom/vungle/warren/AdConfig$AdSize;

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/model/Placement;->a:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->b:Z

    .line 6
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->c:Z

    .line 7
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->g:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4a

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4a

    .line 2
    :cond_12
    check-cast p1, Lcom/vungle/warren/model/Placement;

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/model/Placement;->a:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/vungle/warren/model/Placement;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/vungle/warren/model/Placement;->a:Ljava/lang/String;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 4
    :cond_26
    iget v2, p0, Lcom/vungle/warren/model/Placement;->i:I

    iget v3, p1, Lcom/vungle/warren/model/Placement;->i:I

    if-eq v2, v3, :cond_2d

    return v1

    .line 5
    :cond_2d
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->b:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->b:Z

    if-eq v2, v3, :cond_34

    return v1

    .line 6
    :cond_34
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->c:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->c:Z

    if-eq v2, v3, :cond_3b

    return v1

    .line 7
    :cond_3b
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->g:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->g:Z

    if-eq v2, v3, :cond_42

    return v1

    .line 8
    :cond_42
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->h:Z

    iget-boolean p1, p1, Lcom/vungle/warren/model/Placement;->h:Z

    if-eq v2, p1, :cond_49

    return v1

    :cond_49
    return v0

    :cond_4a
    :goto_4a
    return v1
.end method

.method public getAdRefreshDuration()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Placement;->e:I

    if-gtz v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return v0
.end method

.method public getAdSize()Lcom/vungle/warren/AdConfig$AdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->j:Lcom/vungle/warren/AdConfig$AdSize;

    if-nez v0, :cond_6

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    :cond_6
    return-object v0
.end method

.method public getAutoCachePriority()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Placement;->f:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxHbCache()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Placement;->l:I

    return v0
.end method

.method public getPlacementAdType()I
    .registers 2
    .annotation build Lcom/vungle/warren/model/Placement$PlacementAdType;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Placement;->i:I

    return v0
.end method

.method public getRecommendedAdSize()Lcom/vungle/warren/AdConfig$AdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->k:Lcom/vungle/warren/AdConfig$AdSize;

    return-object v0
.end method

.method public getWakeupTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/Placement;->d:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/vungle/warren/model/Placement;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->h:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isAutoCached()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->j:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v0}, Lcom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_a
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->b:Z

    return v0
.end method

.method public isHeaderBidding()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->g:Z

    return v0
.end method

.method public isIncentivized()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->c:Z

    return v0
.end method

.method public isMultipleHBPEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->g:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/vungle/warren/model/Placement;->l:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSingleHBPEnabled()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/vungle/warren/model/Placement;->l:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->h:Z

    return v0
.end method

.method public setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/Placement;->j:Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method public setValid(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/model/Placement;->h:Z

    return-void
.end method

.method public setWakeupTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/model/Placement;->d:J

    return-void
.end method

.method public snooze(J)V
    .registers 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/vungle/warren/model/Placement;->d:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/model/Placement;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", autoCached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", incentivized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wakeupTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/model/Placement;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adRefreshDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Placement;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoCachePriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Placement;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headerBidding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", placementAdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Placement;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Placement;->j:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", maxHbCache="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Placement;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/model/Placement;->j:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendedAdSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/model/Placement;->k:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.model.Placement.PlacementAdType (com.vungle.warren.model.Placement$PlacementAdType)
.class public interface abstract annotation Lcom/vungle/warren/model/Placement$PlacementAdType;
.super Ljava/lang/Object;
.source "Placement.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PlacementAdType"
.end annotation
