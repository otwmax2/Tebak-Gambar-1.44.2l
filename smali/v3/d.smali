###### Class v3.d (v3.d)
.class public final Lv3/d;
.super Ljava/lang/Object;
.source "TimeModule_UptimeClockFactory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b<",
        "Lv3/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lv3/d;
    .registers 1

    .line 1
    invoke-static {}, Lv3/d$a;->a()Lv3/d;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lv3/a;
    .registers 2

    .line 1
    invoke-static {}, Lv3/b;->b()Lv3/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ln3/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/a;

    return-object v0
.end method


# virtual methods
.method public b()Lv3/a;
    .registers 2

    .line 1
    invoke-static {}, Lv3/d;->c()Lv3/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lv3/d;->b()Lv3/a;

    move-result-object v0

    return-object v0
.end method

###### Class v3.d.a (v3.d$a)
.class final Lv3/d$a;
.super Ljava/lang/Object;
.source "TimeModule_UptimeClockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lv3/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lv3/d;

    invoke-direct {v0}, Lv3/d;-><init>()V

    sput-object v0, Lv3/d$a;->a:Lv3/d;

    return-void
.end method

.method static synthetic a()Lv3/d;
    .registers 1

    .line 1
    sget-object v0, Lv3/d$a;->a:Lv3/d;

    return-object v0
.end method
