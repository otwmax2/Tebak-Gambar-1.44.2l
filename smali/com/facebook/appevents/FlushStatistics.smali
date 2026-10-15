###### Class com.facebook.appevents.FlushStatistics (com.facebook.appevents.FlushStatistics)
.class public final Lcom/facebook/appevents/FlushStatistics;
.super Ljava/lang/Object;
.source "FlushStatistics.kt"


# instance fields
.field private numEvents:I

.field private result:Lcom/facebook/appevents/FlushResult;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    iput-object v0, p0, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    return-void
.end method


# virtual methods
.method public final getNumEvents()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    return v0
.end method

.method public final getResult()Lcom/facebook/appevents/FlushResult;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    return-object v0
.end method

.method public final setNumEvents(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    return-void
.end method

.method public final setResult(Lcom/facebook/appevents/FlushResult;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    return-void
.end method
