###### Class n5.e (n5.e)
.class public final Ln5/e;
.super Ljava/lang/Object;
.source "CrashlyticsRemoteConfigListener.kt"

# interfaces
.implements Lw6/a;


# instance fields
.field private final a:Lr5/m;


# direct methods
.method public constructor <init>(Lr5/m;)V
    .registers 3

    const-string v0, "userMetadata"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/e;->a:Lr5/m;

    return-void
.end method
