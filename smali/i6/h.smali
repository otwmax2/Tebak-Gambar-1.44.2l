###### Class i6.h (i6.h)
.class public Li6/h;
.super Ljava/lang/Object;
.source "HeartBeatConsumerComponent.java"


# direct methods
.method public static a()Lk5/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/c<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li6/h$a;

    invoke-direct {v0}, Li6/h$a;-><init>()V

    const-class v1, Li6/g;

    invoke-static {v0, v1}, Lk5/c;->l(Ljava/lang/Object;Ljava/lang/Class;)Lk5/c;

    move-result-object v0

    return-object v0
.end method

###### Class i6.h.a (i6.h$a)
.class Li6/h$a;
.super Ljava/lang/Object;
.source "HeartBeatConsumerComponent.java"

# interfaces
.implements Li6/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li6/h;->a()Lk5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
