package a2;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamLocalUriFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public class i extends g<InputStream> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final UriMatcher f44d;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f44d = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
    }

    public i(Context context, Uri uri) {
        super(context, uri);
    }

    private InputStream h(Uri uri, ContentResolver contentResolver, int i10) throws FileNotFoundException {
        if (i10 != 1 && i10 != 3) {
            return contentResolver.openInputStream(uri);
        }
        if (i10 == 1 && (uri = ContactsContract.Contacts.lookupContact(contentResolver, uri)) == null) {
            throw new FileNotFoundException("Contact cannot be found");
        }
        return i(contentResolver, uri);
    }

    @TargetApi(14)
    private InputStream i(ContentResolver contentResolver, Uri uri) {
        return Build.VERSION.SDK_INT < 14 ? ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri) : ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // a2.g
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void d(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // a2.g
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public InputStream e(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        return h(uri, contentResolver, f44d.match(uri));
    }
}
