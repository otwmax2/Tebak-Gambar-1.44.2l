###### Class com.vungle.warren.model.Report (com.vungle.warren.model.Report)
.class public Lcom/vungle/warren/model/Report;
.super Ljava/lang/Object;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/Report$UserAction;,
        Lcom/vungle/warren/model/Report$Status;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x3

.field public static final NEW:I = 0x0

.field public static final READY:I = 0x1

.field public static final SENDING:I = 0x2


# instance fields
.field a:I

.field public assetDownloadDuration:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:Z

.field h:J

.field i:Ljava/lang/String;

.field public initTimeStamp:J

.field j:J

.field k:J

.field l:J

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:I

.field final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report$UserAction;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:I

.field w:Ljava/lang/String;

.field volatile x:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/vungle/warren/model/Report;->a:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLcom/vungle/warren/SessionData;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/model/Report;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;Lcom/vungle/warren/SessionData;)V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;Lcom/vungle/warren/SessionData;)V
    .registers 8

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/vungle/warren/model/Report;->a:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    .line 12
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->n:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/model/Report;->e:Z

    .line 17
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result p2

    iput-boolean p2, p0, Lcom/vungle/warren/model/Report;->f:Z

    .line 18
    iput-wide p3, p0, Lcom/vungle/warren/model/Report;->h:J

    .line 19
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/model/Report;->i:Ljava/lang/String;

    const-wide/16 p2, -0x1

    .line 20
    iput-wide p2, p0, Lcom/vungle/warren/model/Report;->l:J

    .line 21
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/model/Report;->m:Ljava/lang/String;

    if-eqz p6, :cond_58

    .line 22
    invoke-virtual {p6}, Lcom/vungle/warren/SessionData;->getInitTimeStamp()J

    move-result-wide p2

    goto :goto_5a

    :cond_58
    const-wide/16 p2, 0x0

    :goto_5a
    iput-wide p2, p0, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    .line 23
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAssetDownloadDuration()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    .line 24
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result p2

    if-eqz p2, :cond_78

    const/4 p3, 0x1

    if-ne p2, p3, :cond_70

    const-string p2, "vungle_mraid"

    .line 25
    iput-object p2, p0, Lcom/vungle/warren/model/Report;->s:Ljava/lang/String;

    goto :goto_7c

    .line 26
    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown ad type, cannot process!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    const-string p2, "vungle_local"

    .line 27
    iput-object p2, p0, Lcom/vungle/warren/model/Report;->s:Ljava/lang/String;

    .line 28
    :goto_7c
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/model/Report;->t:Ljava/lang/String;

    if-nez p5, :cond_89

    const-string p2, ""

    .line 29
    iput-object p2, p0, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    goto :goto_8b

    .line 30
    :cond_89
    iput-object p5, p0, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    .line 31
    :goto_8b
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/warren/AdConfig;->getOrdinal()I

    move-result p2

    iput p2, p0, Lcom/vungle/warren/model/Report;->v:I

    .line 32
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p2

    if-eqz p2, :cond_a9

    .line 34
    invoke-virtual {p1}, Lcom/vungle/warren/AdConfig$AdSize;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/model/Report;->w:Ljava/lang/String;

    :cond_a9
    return-void
.end method


# virtual methods
.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 9

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_6

    .line 1
    monitor-exit p0

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p1, :cond_166

    .line 2
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    goto/16 :goto_166

    .line 3
    :cond_15
    check-cast p1, Lcom/vungle/warren/model/Report;

    .line 4
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_163

    if-nez v2, :cond_23

    monitor-exit p0

    return v1

    .line 5
    :cond_23
    :try_start_23
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_163

    if-nez v2, :cond_2f

    monitor-exit p0

    return v1

    .line 6
    :cond_2f
    :try_start_2f
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_163

    if-nez v2, :cond_3b

    monitor-exit p0

    return v1

    .line 7
    :cond_3b
    :try_start_3b
    iget-boolean v2, p1, Lcom/vungle/warren/model/Report;->e:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Report;->e:Z
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_163

    if-eq v2, v3, :cond_43

    monitor-exit p0

    return v1

    .line 8
    :cond_43
    :try_start_43
    iget-boolean v2, p1, Lcom/vungle/warren/model/Report;->f:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Report;->f:Z
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_163

    if-eq v2, v3, :cond_4b

    monitor-exit p0

    return v1

    .line 9
    :cond_4b
    :try_start_4b
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->h:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->h:J
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_55

    monitor-exit p0

    return v1

    .line 10
    :cond_55
    :try_start_55
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_163

    if-nez v2, :cond_61

    monitor-exit p0

    return v1

    .line 11
    :cond_61
    :try_start_61
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->j:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->j:J
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6b

    monitor-exit p0

    return v1

    .line 12
    :cond_6b
    :try_start_6b
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->k:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->k:J
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_75

    monitor-exit p0

    return v1

    .line 13
    :cond_75
    :try_start_75
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->l:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->l:J
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7f

    monitor-exit p0

    return v1

    .line 14
    :cond_7f
    :try_start_7f
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_163

    if-nez v2, :cond_8b

    monitor-exit p0

    return v1

    .line 15
    :cond_8b
    :try_start_8b
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_163

    if-nez v2, :cond_97

    monitor-exit p0

    return v1

    .line 16
    :cond_97
    :try_start_97
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_163

    if-nez v2, :cond_a3

    monitor-exit p0

    return v1

    .line 17
    :cond_a3
    :try_start_a3
    iget-boolean v2, p1, Lcom/vungle/warren/model/Report;->x:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Report;->x:Z
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_163

    if-eq v2, v3, :cond_ab

    monitor-exit p0

    return v1

    .line 18
    :cond_ab
    :try_start_ab
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_b3
    .catchall {:try_start_ab .. :try_end_b3} :catchall_163

    if-nez v2, :cond_b7

    monitor-exit p0

    return v1

    .line 19
    :cond_b7
    :try_start_b7
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->initTimeStamp:J
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c1

    monitor-exit p0

    return v1

    .line 20
    :cond_c1
    :try_start_c1
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J
    :try_end_c5
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_cb

    monitor-exit p0

    return v1

    .line 21
    :cond_cb
    :try_start_cb
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_d7
    .catchall {:try_start_cb .. :try_end_d7} :catchall_163

    if-eq v2, v3, :cond_db

    monitor-exit p0

    return v1

    :cond_db
    const/4 v2, 0x0

    .line 22
    :goto_dc
    :try_start_dc
    iget-object v3, p0, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_fd

    .line 23
    iget-object v3, p1, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_f6
    .catchall {:try_start_dc .. :try_end_f6} :catchall_163

    if-nez v3, :cond_fa

    .line 24
    monitor-exit p0

    return v1

    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    .line 25
    :cond_fd
    :try_start_fd
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_109
    .catchall {:try_start_fd .. :try_end_109} :catchall_163

    if-eq v2, v3, :cond_10d

    monitor-exit p0

    return v1

    :cond_10d
    const/4 v2, 0x0

    .line 26
    :goto_10e
    :try_start_10e
    iget-object v3, p0, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_12f

    .line 27
    iget-object v3, p1, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_128
    .catchall {:try_start_10e .. :try_end_128} :catchall_163

    if-nez v3, :cond_12c

    .line 28
    monitor-exit p0

    return v1

    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10e

    .line 29
    :cond_12f
    :try_start_12f
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_13b
    .catchall {:try_start_12f .. :try_end_13b} :catchall_163

    if-eq v2, v3, :cond_13f

    monitor-exit p0

    return v1

    :cond_13f
    const/4 v2, 0x0

    .line 30
    :goto_140
    :try_start_140
    iget-object v3, p0, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_161

    .line 31
    iget-object v3, p1, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Report$UserAction;

    iget-object v4, p0, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/model/Report$UserAction;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_15a
    .catchall {:try_start_140 .. :try_end_15a} :catchall_163

    if-nez v3, :cond_15e

    .line 32
    monitor-exit p0

    return v1

    :cond_15e
    add-int/lit8 v2, v2, 0x1

    goto :goto_140

    .line 33
    :cond_161
    monitor-exit p0

    return v0

    :catchall_163
    move-exception p1

    monitor-exit p0

    throw p1

    .line 34
    :cond_166
    :goto_166
    monitor-exit p0

    return v1
.end method

.method public getAdDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/Report;->k:J

    return-wide v0
.end method

.method public getAdStartTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/Report;->h:J

    return-wide v0
.end method

.method public getAdvertisementID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/model/Report;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2
    .annotation build Lcom/vungle/warren/model/Report$Status;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Report;->a:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/vungle/warren/model/Report;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Lcom/vungle/warren/model/Report;->f:Z

    if-eqz v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->h:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->j:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->k:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->l:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-boolean v1, p0, Lcom/vungle/warren/model/Report;->x:Z
    :try_end_b2
    .catchall {:try_start_1 .. :try_end_b2} :catchall_b5

    add-int/2addr v0, v1

    .line 21
    monitor-exit p0

    return v0

    :catchall_b5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCTAClicked()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Report;->x:Z

    return v0
.end method

.method public declared-synchronized recordAction(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    new-instance v1, Lcom/vungle/warren/model/Report$UserAction;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/vungle/warren/model/Report$UserAction;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p2, p0, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "download"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/vungle/warren/model/Report;->x:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 5
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordError(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordProgress(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/vungle/warren/model/Report;->o:I

    return-void
.end method

.method public setAdDuration(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/model/Report;->k:J

    return-void
.end method

.method public setAllAssetDownloaded(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/model/Report;->g:Z

    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/model/Report$Status;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/vungle/warren/model/Report;->a:I

    return-void
.end method

.method public setTtDownload(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/model/Report;->l:J

    return-void
.end method

.method public setVideoLength(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/model/Report;->j:J

    return-void
.end method

.method public declared-synchronized toReportBody()Lcom/google/gson/o;
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    const-string v1, "placement_reference_id"

    .line 2
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_token"

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_id"

    .line 4
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "incentivized"

    .line 5
    iget-boolean v2, p0, Lcom/vungle/warren/model/Report;->e:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "header_bidding"

    .line 6
    iget-boolean v2, p0, Lcom/vungle/warren/model/Report;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->u(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "play_remote_assets"

    .line 7
    iget-boolean v2, p0, Lcom/vungle/warren/model/Report;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->u(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "adStartTime"

    .line 8
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 9
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "url"

    .line 10
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    const-string v1, "adDuration"

    .line 11
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "ttDownload"

    .line 12
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "campaign"

    .line 13
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adType"

    .line 14
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "templateId"

    .line 15
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "init_timestamp"

    .line 16
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "asset_download_duration"

    .line 17
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 18
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    const-string v1, "ad_size"

    .line 19
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_ab
    new-instance v1, Lcom/google/gson/i;

    invoke-direct {v1}, Lcom/google/gson/i;-><init>()V

    .line 21
    new-instance v2, Lcom/google/gson/o;

    invoke-direct {v2}, Lcom/google/gson/o;-><init>()V

    const-string v3, "startTime"

    .line 22
    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 23
    iget v3, p0, Lcom/vungle/warren/model/Report;->o:I

    if-lez v3, :cond_cd

    const-string v4, "videoViewed"

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    :cond_cd
    iget-wide v3, p0, Lcom/vungle/warren/model/Report;->j:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_de

    const-string v5, "videoLength"

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 27
    :cond_de
    new-instance v3, Lcom/google/gson/i;

    invoke-direct {v3}, Lcom/google/gson/i;-><init>()V

    .line 28
    iget-object v4, p0, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/model/Report$UserAction;

    .line 29
    invoke-virtual {v5}, Lcom/vungle/warren/model/Report$UserAction;->toJson()Lcom/google/gson/o;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gson/i;->t(Lcom/google/gson/l;)V

    goto :goto_e9

    :cond_fd
    const-string v4, "userActions"

    .line 30
    invoke-virtual {v2, v4, v3}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 31
    invoke-virtual {v1, v2}, Lcom/google/gson/i;->t(Lcom/google/gson/l;)V

    const-string v2, "plays"

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 33
    new-instance v1, Lcom/google/gson/i;

    invoke-direct {v1}, Lcom/google/gson/i;-><init>()V

    .line 34
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_115
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_125

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v3}, Lcom/google/gson/i;->u(Ljava/lang/String;)V

    goto :goto_115

    :cond_125
    const-string v2, "errors"

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 37
    new-instance v1, Lcom/google/gson/i;

    invoke-direct {v1}, Lcom/google/gson/i;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_135
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_145

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v3}, Lcom/google/gson/i;->u(Ljava/lang/String;)V

    goto :goto_135

    :cond_145
    const-string v2, "clickedThrough"

    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 41
    iget-boolean v1, p0, Lcom/vungle/warren/model/Report;->e:Z

    if-eqz v1, :cond_15d

    iget-object v1, p0, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15d

    const-string v1, "user"

    .line 42
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_15d
    iget v1, p0, Lcom/vungle/warren/model/Report;->v:I

    if-lez v1, :cond_16a

    const-string v2, "ordinal_view"

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_16a
    .catchall {:try_start_1 .. :try_end_16a} :catchall_16c

    .line 45
    :cond_16a
    monitor-exit p0

    return-object v0

    :catchall_16c
    move-exception v0

    monitor-exit p0

    goto :goto_170

    :goto_16f
    throw v0

    :goto_170
    goto :goto_16f
.end method

###### Class com.vungle.warren.model.Report.Status (com.vungle.warren.model.Report$Status)
.class public interface abstract annotation Lcom/vungle/warren/model/Report$Status;
.super Ljava/lang/Object;
.source "Report.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Status"
.end annotation

###### Class com.vungle.warren.model.Report.UserAction (com.vungle.warren.model.Report$UserAction)
.class public Lcom/vungle/warren/model/Report$UserAction;
.super Ljava/lang/Object;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAction"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "action"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "value"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lb7/c;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/model/Report$UserAction;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/model/Report$UserAction;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/vungle/warren/model/Report$UserAction;->c:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 2
    :cond_12
    check-cast p1, Lcom/vungle/warren/model/Report$UserAction;

    .line 3
    iget-object v2, p1, Lcom/vungle/warren/model/Report$UserAction;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report$UserAction;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 4
    :cond_1f
    iget-object v2, p1, Lcom/vungle/warren/model/Report$UserAction;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report$UserAction;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    return v1

    .line 5
    :cond_2a
    iget-wide v2, p1, Lcom/vungle/warren/model/Report$UserAction;->c:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report$UserAction;->c:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_33

    return v1

    :cond_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Report$UserAction;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Lcom/vungle/warren/model/Report$UserAction;->c:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toJson()Lcom/google/gson/o;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->a:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->b:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->b:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1d
    iget-wide v1, p0, Lcom/vungle/warren/model/Report$UserAction;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp_millis"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method
