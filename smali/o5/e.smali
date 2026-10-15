###### Class o5.e (o5.e)
.class public Lo5/e;
.super Ljava/lang/Object;
.source "CrashlyticsOriginAnalyticsEventLogger.java"

# interfaces
.implements Lo5/a;


# instance fields
.field private final a:Le5/a;


# direct methods
.method public constructor <init>(Le5/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo5/e;->a:Le5/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lo5/e;->a:Le5/a;

    const-string v1, "clx"

    invoke-interface {v0, v1, p1, p2}, Le5/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
