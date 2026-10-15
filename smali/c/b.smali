###### Class c.b (c.b)
.class public Lc/b;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b$b;,
        Lc/b$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final o:Z

.field final p:Landroid/os/Handler;

.field q:Lc/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lc/b$a;

    invoke-direct {v0}, Lc/b$a;-><init>()V

    sput-object v0, Lc/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/b;->o:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/b;->p:Landroid/os/Handler;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lc/a$a;->P0(Landroid/os/IBinder;)Lc/a;

    move-result-object p1

    iput-object p1, p0, Lc/b;->q:Lc/a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected h(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object p2, p0, Lc/b;->q:Lc/a;

    if-nez p2, :cond_c

    .line 3
    new-instance p2, Lc/b$b;

    invoke-direct {p2, p0}, Lc/b$b;-><init>(Lc/b;)V

    iput-object p2, p0, Lc/b;->q:Lc/a;

    .line 4
    :cond_c
    iget-object p2, p0, Lc/b;->q:Lc/a;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

###### Class c.b.a (c.b$a)
.class Lc/b$a;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lc/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lc/b;
    .registers 3

    .line 1
    new-instance v0, Lc/b;

    invoke-direct {v0, p1}, Lc/b;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lc/b;
    .registers 2

    .line 1
    new-array p1, p1, [Lc/b;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lc/b$a;->a(Landroid/os/Parcel;)Lc/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lc/b$a;->b(I)[Lc/b;

    move-result-object p1

    return-object p1
.end method

###### Class c.b.BinderC0084b (c.b$b)
.class Lc/b$b;
.super Lc/a$a;
.source "ResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic o:Lc/b;


# direct methods
.method constructor <init>(Lc/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/b$b;->o:Lc/b;

    invoke-direct {p0}, Lc/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public Ka(ILandroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lc/b$b;->o:Lc/b;

    iget-object v1, v0, Lc/b;->p:Landroid/os/Handler;

    if-eqz v1, :cond_f

    .line 2
    new-instance v2, Lc/b$c;

    invoke-direct {v2, v0, p1, p2}, Lc/b$c;-><init>(Lc/b;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    .line 3
    :cond_f
    invoke-virtual {v0, p1, p2}, Lc/b;->h(ILandroid/os/Bundle;)V

    :goto_12
    return-void
.end method

###### Class c.b.c (c.b$c)
.class Lc/b$c;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final o:I

.field final p:Landroid/os/Bundle;

.field final synthetic q:Lc/b;


# direct methods
.method constructor <init>(Lc/b;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lc/b$c;->q:Lc/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lc/b$c;->o:I

    .line 3
    iput-object p3, p0, Lc/b$c;->p:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/b$c;->q:Lc/b;

    iget v1, p0, Lc/b$c;->o:I

    iget-object v2, p0, Lc/b$c;->p:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lc/b;->h(ILandroid/os/Bundle;)V

    return-void
.end method
