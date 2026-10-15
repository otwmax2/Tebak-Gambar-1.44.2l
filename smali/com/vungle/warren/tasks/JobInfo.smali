###### Class com.vungle.warren.tasks.JobInfo (com.vungle.warren.tasks.JobInfo)
.class public Lcom/vungle/warren/tasks/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/tasks/JobInfo$NetworkType;,
        Lcom/vungle/warren/tasks/JobInfo$Priority;,
        Lcom/vungle/warren/tasks/JobInfo$ReschedulePolicy;
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private p:Z

.field private q:J

.field private r:J

.field private s:J

.field private t:Landroid/os/Bundle;

.field private u:I

.field private v:I

.field private w:I
    .annotation build Lcom/vungle/warren/tasks/JobInfo$NetworkType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/tasks/JobInfo;->t:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/vungle/warren/tasks/JobInfo;->u:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/vungle/warren/tasks/JobInfo;->v:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/vungle/warren/tasks/JobInfo;->w:I

    .line 6
    iput-object p1, p0, Lcom/vungle/warren/tasks/JobInfo;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lcom/vungle/warren/tasks/JobInfo;
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/tasks/JobInfo;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelay()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->q:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/tasks/JobInfo;->t:Landroid/os/Bundle;

    return-object v0
.end method

.method public getJobTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/tasks/JobInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/tasks/JobInfo;->v:I

    return v0
.end method

.method public getRequiredNetworkType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/tasks/JobInfo;->w:I

    return v0
.end method

.method public getUpdateCurrent()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/tasks/JobInfo;->p:Z

    return v0
.end method

.method public makeNextRescedule()J
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 2
    :cond_9
    iget-wide v4, p0, Lcom/vungle/warren/tasks/JobInfo;->s:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_12

    .line 3
    iput-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->s:J

    goto :goto_1d

    .line 4
    :cond_12
    iget v0, p0, Lcom/vungle/warren/tasks/JobInfo;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const-wide/16 v0, 0x2

    mul-long v4, v4, v0

    .line 5
    iput-wide v4, p0, Lcom/vungle/warren/tasks/JobInfo;->s:J

    .line 6
    :cond_1d
    :goto_1d
    iget-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->s:J

    return-wide v0
.end method

.method public setDelay(J)Lcom/vungle/warren/tasks/JobInfo;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/tasks/JobInfo;->q:J

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;
    .registers 2

    if-eqz p1, :cond_4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/tasks/JobInfo;->t:Landroid/os/Bundle;

    :cond_4
    return-object p0
.end method

.method public setPriority(I)Lcom/vungle/warren/tasks/JobInfo;
    .registers 2

    .line 1
    iput p1, p0, Lcom/vungle/warren/tasks/JobInfo;->v:I

    return-object p0
.end method

.method public setRequiredNetworkType(I)Lcom/vungle/warren/tasks/JobInfo;
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/tasks/JobInfo$NetworkType;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/vungle/warren/tasks/JobInfo;->w:I

    return-object p0
.end method

.method public setReschedulePolicy(JI)Lcom/vungle/warren/tasks/JobInfo;
    .registers 4

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/tasks/JobInfo;->r:J

    .line 2
    iput p3, p0, Lcom/vungle/warren/tasks/JobInfo;->u:I

    return-object p0
.end method

.method public setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/tasks/JobInfo;->p:Z

    return-object p0
.end method

###### Class com.vungle.warren.tasks.JobInfo.NetworkType (com.vungle.warren.tasks.JobInfo$NetworkType)
.class public interface abstract annotation Lcom/vungle/warren/tasks/JobInfo$NetworkType;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/tasks/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NetworkType"
.end annotation


# static fields
.field public static final ANY:I = 0x0

.field public static final CONNECTED:I = 0x1

###### Class com.vungle.warren.tasks.JobInfo.Priority (com.vungle.warren.tasks.JobInfo$Priority)
.class public interface abstract annotation Lcom/vungle/warren/tasks/JobInfo$Priority;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/tasks/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Priority"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CRITICAL:I = 0x5

.field public static final HIGH:I = 0x3

.field public static final HIGHEST:I = 0x4

.field public static final LOW:I = 0x1

.field public static final LOWEST:I = 0x0

.field public static final NORMAL:I = 0x2

###### Class com.vungle.warren.tasks.JobInfo.ReschedulePolicy (com.vungle.warren.tasks.JobInfo$ReschedulePolicy)
.class public interface abstract annotation Lcom/vungle/warren/tasks/JobInfo$ReschedulePolicy;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/tasks/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ReschedulePolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final EXPONENTIAL:I = 0x1

.field public static final LINEAR:I
