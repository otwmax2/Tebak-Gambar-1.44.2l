###### Class androidx.activity.result.e (androidx.activity.result.e)
.class public final Landroidx/activity/result/e;
.super Ljava/lang/Object;
.source "IntentSenderRequest.java"

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
        Landroidx/activity/result/e$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/activity/result/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Landroid/content/IntentSender;

.field private final p:Landroid/content/Intent;

.field private final q:I

.field private final r:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/activity/result/e$a;

    invoke-direct {v0}, Landroidx/activity/result/e$a;-><init>()V

    sput-object v0, Landroidx/activity/result/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/activity/result/e;->o:Landroid/content/IntentSender;

    .line 3
    iput-object p2, p0, Landroidx/activity/result/e;->p:Landroid/content/Intent;

    .line 4
    iput p3, p0, Landroidx/activity/result/e;->q:I

    .line 5
    iput p4, p0, Landroidx/activity/result/e;->r:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-class v0, Landroid/content/IntentSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iput-object v0, p0, Landroidx/activity/result/e;->o:Landroid/content/IntentSender;

    .line 8
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroidx/activity/result/e;->p:Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/activity/result/e;->q:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/activity/result/e;->r:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/result/e;->p:Landroid/content/Intent;

    return-object v0
.end method

.method public t()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/activity/result/e;->q:I

    return v0
.end method

.method public v()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/activity/result/e;->r:I

    return v0
.end method

.method public w()Landroid/content/IntentSender;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/result/e;->o:Landroid/content/IntentSender;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/activity/result/e;->o:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object v0, p0, Landroidx/activity/result/e;->p:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget p2, p0, Landroidx/activity/result/e;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroidx/activity/result/e;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class androidx.activity.result.e.a (androidx.activity.result.e$a)
.class Landroidx/activity/result/e$a;
.super Ljava/lang/Object;
.source "IntentSenderRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/activity/result/e;",
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
.method public a(Landroid/os/Parcel;)Landroidx/activity/result/e;
    .registers 3

    .line 1
    new-instance v0, Landroidx/activity/result/e;

    invoke-direct {v0, p1}, Landroidx/activity/result/e;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Landroidx/activity/result/e;
    .registers 2

    .line 1
    new-array p1, p1, [Landroidx/activity/result/e;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/activity/result/e$a;->a(Landroid/os/Parcel;)Landroidx/activity/result/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/activity/result/e$a;->b(I)[Landroidx/activity/result/e;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.activity.result.e.b (androidx.activity.result.e$b)
.class public final Landroidx/activity/result/e$b;
.super Ljava/lang/Object;
.source "IntentSenderRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/IntentSender;

.field private b:Landroid/content/Intent;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/IntentSender;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/activity/result/e$b;->a:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public a()Landroidx/activity/result/e;
    .registers 6

    .line 1
    new-instance v0, Landroidx/activity/result/e;

    iget-object v1, p0, Landroidx/activity/result/e$b;->a:Landroid/content/IntentSender;

    iget-object v2, p0, Landroidx/activity/result/e$b;->b:Landroid/content/Intent;

    iget v3, p0, Landroidx/activity/result/e$b;->c:I

    iget v4, p0, Landroidx/activity/result/e$b;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/activity/result/e;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object v0
.end method

.method public b(Landroid/content/Intent;)Landroidx/activity/result/e$b;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/activity/result/e$b;->b:Landroid/content/Intent;

    return-object p0
.end method

.method public c(II)Landroidx/activity/result/e$b;
    .registers 3

    .line 1
    iput p1, p0, Landroidx/activity/result/e$b;->d:I

    .line 2
    iput p2, p0, Landroidx/activity/result/e$b;->c:I

    return-object p0
.end method
