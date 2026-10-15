###### Class com.vungle.warren.tasks.SendLogsJob (com.vungle.warren.tasks.SendLogsJob)
.class public Lcom/vungle/warren/tasks/SendLogsJob;
.super Ljava/lang/Object;
.source "SendLogsJob.java"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# static fields
.field static final b:Ljava/lang/String; = "SendLogsJob"


# instance fields
.field private a:Lcom/vungle/warren/log/LogManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/log/LogManager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/tasks/SendLogsJob;->a:Lcom/vungle/warren/log/LogManager;

    return-void
.end method

.method public static makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lcom/vungle/warren/tasks/SendLogsJob;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/tasks/SendLogsJob;->a:Lcom/vungle/warren/log/LogManager;

    invoke-virtual {p1}, Lcom/vungle/warren/log/LogManager;->sendSdkLogs()V

    const/4 p1, 0x0

    return p1
.end method
