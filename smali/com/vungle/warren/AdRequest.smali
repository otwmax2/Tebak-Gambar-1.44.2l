###### Class com.vungle.warren.AdRequest (com.vungle.warren.AdRequest)
.class public final Lcom/vungle/warren/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdRequest$Type;
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Lcom/vungle/warren/AdMarkup;

.field private final q:I
    .annotation build Lcom/vungle/warren/AdRequest$Type;
    .end annotation
.end field

.field private final r:J

.field public timeStamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 8
    .param p2    # I
        .annotation build Lcom/vungle/warren/AdRequest$Type;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/vungle/warren/AdRequest;->timeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/AdRequest;->o:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/AdRequest;->p:Lcom/vungle/warren/AdMarkup;

    .line 5
    iput p2, p0, Lcom/vungle/warren/AdRequest;->q:I

    .line 6
    iput-wide p3, p0, Lcom/vungle/warren/AdRequest;->r:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;)V
    .registers 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/vungle/warren/AdRequest;->timeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    iput-object p1, p0, Lcom/vungle/warren/AdRequest;->o:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/vungle/warren/AdRequest;->p:Lcom/vungle/warren/AdMarkup;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/vungle/warren/AdRequest;->q:I

    const-wide/16 p1, 0x1

    .line 12
    iput-wide p1, p0, Lcom/vungle/warren/AdRequest;->r:J

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

    if-eqz p1, :cond_34

    .line 1
    const-class v2, Lcom/vungle/warren/AdRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_34

    .line 2
    :cond_10
    check-cast p1, Lcom/vungle/warren/AdRequest;

    .line 3
    iget v2, p0, Lcom/vungle/warren/AdRequest;->q:I

    iget v3, p1, Lcom/vungle/warren/AdRequest;->q:I

    if-eq v2, v3, :cond_19

    return v1

    .line 4
    :cond_19
    iget-object v2, p0, Lcom/vungle/warren/AdRequest;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/warren/AdRequest;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    return v1

    .line 5
    :cond_24
    iget-object v2, p0, Lcom/vungle/warren/AdRequest;->p:Lcom/vungle/warren/AdMarkup;

    iget-object p1, p1, Lcom/vungle/warren/AdRequest;->p:Lcom/vungle/warren/AdMarkup;

    if-eqz v2, :cond_2f

    invoke-virtual {v2, p1}, Lcom/vungle/warren/AdMarkup;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_33

    :cond_2f
    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method public getAdCount()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/AdRequest;->r:J

    return-wide v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdRequest;->p:Lcom/vungle/warren/AdMarkup;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/warren/AdMarkup;->getEventId()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getImpression()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdRequest;->p:Lcom/vungle/warren/AdMarkup;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/warren/AdMarkup;->getImpression()[Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdRequest;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2
    .annotation build Lcom/vungle/warren/AdRequest$Type;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/AdRequest;->q:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdRequest;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/AdRequest;->p:Lcom/vungle/warren/AdMarkup;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/vungle/warren/AdMarkup;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/vungle/warren/AdRequest;->q:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRequest{placementId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdRequest;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", adMarkup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdRequest;->p:Lcom/vungle/warren/AdMarkup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/AdRequest;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/AdRequest;->r:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.AdRequest.Type (com.vungle.warren.AdRequest$Type)
.class public interface abstract annotation Lcom/vungle/warren/AdRequest$Type;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Type"
.end annotation


# static fields
.field public static final NORMAL:I = 0x0

.field public static final NO_ASSETS:I = 0x1

.field public static final SINGLE_HBP:I = 0x2
